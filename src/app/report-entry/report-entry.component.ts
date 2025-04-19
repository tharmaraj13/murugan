import { Component, ElementRef, NgZone, QueryList, ViewChild, ViewChildren } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { Title } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';
import Swal from 'sweetalert2';
import Quill from 'quill';
import * as annyang from 'annyang';
import * as Handlebars from 'handlebars';

@Component({
  selector: 'app-report-entry',
  templateUrl: './report-entry.component.html',
  styleUrls: ['./report-entry.component.scss']
})
export class ReportEntryComponent {
  reportData: any;
  id: any;
  claim_type: any;

  constructor(private apiservice: ApiserviceService, private titleService: Title,
    private router: Router,
    private route: ActivatedRoute) { }
  @ViewChildren("editorContainer") editorContainers!: QueryList<ElementRef>;
  editors: Quill[] = [];
  editorData: any;
  fields = ["Insured / Doctor Finding", "Hospital records", "Other findings", "Evidences attached", "FINAL RECOMMENDATION"];
  keys = ["insured_findings", "hospital_records", "other_findings", "evidences", "final_recommendation"];

  ngOnInit(): void {
    this.id = this.route.snapshot.params['id'] || null;
    if (this.id) {
      this.apiservice.report_details(this.id).subscribe((res: any) => {
        if (res.status == 'ok') {
          this.reportData = res;
          this.claim_type = res.claim_type
          this.titleService.setTitle(res.claim_type + ' - Final Report');
          let tempSource = res.reportData;
          if (tempSource.length == 0) {
            tempSource = res.reportDefault;
          }
          this.editors.forEach((editor, index) => {
            const deltaValue = tempSource[index].delta_value || '[]';
            const template = Handlebars.compile(deltaValue);
            const htmlContent = template({
              hname: res.hname,
              hplace: res.hplace,
              doa: res.doa,
              doj: res.doj,
            });
            editor.setContents(JSON.parse(htmlContent));
          });
        }
      });
    }
  }

  onSubmit() {
    this.editorData = this.editors.map((editor: Quill) => {
      return {
        delta: editor.getContents(),               // Rich Quill content
        html: editor.root.innerHTML               // Formatted HTML string
      };
    });
    this.apiservice.save_report_entries(this.editorData, this.fields, this.keys, this.id).subscribe((res: any) => {
      Swal.fire({
        title: 'Advance Added Successfully',
        icon: 'success',
      });
    });
  }
  ngAfterViewInit(): void {
    this.editorContainers.forEach((container, index) => {
      const editor = new Quill(container.nativeElement, {
        modules: {
          toolbar: [
            [{ header: [1, 2, 3, 4, false] }],
            ['bold', 'italic', 'underline', 'strike'],
            [{ list: 'ordered' }, { list: 'bullet' }],
            [{ align: [] }],
            [{ color: [] }, { background: [] }],
          ],
        },
        theme: 'snow',
      });

      // Create the voice button
      const customButton = document.createElement('button');
      customButton.innerHTML = '🎤'; // Mic icon or any SVG
      customButton.setAttribute('type', 'button');
      customButton.setAttribute('class', 'mic-button');
      customButton.setAttribute('title', 'Voice to Text');

      // Add listener for speech
      customButton.addEventListener('click', () => {
        this.toggleSpeechToText(editor, customButton);
      });

      // Add to the toolbar DOM
      const toolbarElem = container.nativeElement.parentElement.querySelector('.ql-toolbar');
      toolbarElem?.appendChild(customButton);

      this.editors.push(editor);
    });

    document.querySelectorAll('.ql-toolbar').forEach((toolbar) => {
      (toolbar as HTMLElement).style.backgroundColor = '#e0e0e0';
    });
  }

  toggleSpeechToText(editor: Quill, customButton: HTMLButtonElement): void {
    if (annyang) {
      const commands = {
        '*word': (word: string) => this.insertTextToEditor(editor, word),
      };
      const annyangInstance = annyang as any;
      // If speech recognition is not already listening, start it
      if (annyangInstance.isListening()) {
        annyangInstance.abort();
        customButton.innerHTML = '🎤'; // Change to start button
        customButton.setAttribute('class', 'mic-button');
      } else {
        annyangInstance.addCommands(commands);
        annyangInstance.start();
        customButton.innerHTML = '⏹'; // Change to stop button
        customButton.setAttribute('class', 'mic-button active');
      }
    } else {
      alert('Speech recognition not supported.');
    }
  }

  insertTextToEditor(editor: Quill, word: string): void {
    const cursorPosition = editor.getSelection(true)?.index || editor.getLength();
    if (editor.getLength() === 1) {
      editor.insertText(0, word + ' ');
    } else {
      editor.insertText(cursorPosition, word + ' ');
    }
    // Ensure that the cursor moves to the end of the inserted text
    editor.setSelection(cursorPosition + word.length + 1);
  }

  // downloading2(table_data: any) {
  //   const doc_name = "default_report.docx";
  //   loadFile(
  //     "assets/template/" + doc_name,
  //     (error: any, content: any) => {
  //       if (error) {
  //         throw error;
  //       }
  //       const zip = new PizZip(content);
  //       const doc = new Docxtemplater(zip, {
  //         paragraphLoop: true,
  //         linebreaks: true,
  //       });
  //       // render the document (replace all occurences of {first_name} by John, {last_name} by Doe, ...)
  //       doc.render(table_data);
  //       const blob = doc.getZip().generate({
  //         type: "blob",
  //         mimeType:
  //           "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  //       });
  //       // Output the document using Data-URI
  //       saveAs(blob, doc_name);
  //     }
  //   );
  // }
}
