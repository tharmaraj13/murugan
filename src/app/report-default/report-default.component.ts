import { Component, ElementRef, QueryList, ViewChildren } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { ActivatedRoute } from '@angular/router';
import { ApiserviceService } from '../apiservice.service';
import Swal from 'sweetalert2';
import Quill from 'quill';
import * as annyang from 'annyang';

@Component({
  selector: 'app-report-default',
  templateUrl: './report-default.component.html',
  styleUrls: ['./report-default.component.scss']
})
export class ReportDefaultComponent {
  constructor(
    private apiservice: ApiserviceService,
    private titleService: Title,
    private route: ActivatedRoute) { }

  @ViewChildren("editorContainer") editorContainers!: QueryList<ElementRef>;
  editors: Quill[] = [];
  editorData: any;
  claim_type: any = 'Cashless';
  fields = ["Insured / Doctor Finding", "Hospital records", "Other findings", "Evidences attached", "FINAL RECOMMENDATION"];
  keys = ["insured_findings", "hospital_records", "other_findings", "evidences", "final_recommendation"];

  ngOnInit() {
    this.fetchData();
  }
  fetchData() {
    this.apiservice.report_defaults(this.claim_type).subscribe((res: any) => {
      this.titleService.setTitle(this.claim_type + ' - Final Report');
      if (res.status == 'ok') {
        const tempSource = res.reportDefault;
        this.editors.forEach((editor, index) => {
          const deltaValue = tempSource[index].delta_value || '[]';
          editor.setContents(JSON.parse(deltaValue));
        });
      } else {
        this.editors.forEach((editor) => {
          editor.setContents([]);
        });
      }
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

  onSubmit() {
    this.editorData = this.editors.map((editor: Quill) => {
      return {
        delta: editor.getContents(),               // Rich Quill content
        html: editor.root.innerHTML               // Formatted HTML string
      };
    });
    this.apiservice.save_report_defaults(this.editorData, this.fields, this.keys, this.claim_type).subscribe((res: any) => {
      Swal.fire({
        title: 'Advance Added Successfully',
        icon: 'success',
      });
    });
  }
}
