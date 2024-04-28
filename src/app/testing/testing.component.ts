import { Component } from '@angular/core';
import Docxtemplater from "docxtemplater";
import * as PizZip from "pizzip";
import PizZipUtils from "pizzip/utils/index.js";
import { saveAs } from "file-saver";
import { ApiserviceService } from '../apiservice.service';
import { ActivatedRoute, Router } from '@angular/router';

function loadFile(url: any, callback: any) {
  PizZipUtils.getBinaryContent(url, callback);
}

@Component({
  selector: 'app-testing',
  templateUrl: './testing.component.html',
  styleUrls: ['./testing.component.scss']
})
export class TestingComponent {
  id: any;
  table_data: any;
  iname: any;
  cases = [
    ['gen_doctor.docx', 'gen_insured.docx', 'tata_gen_insured.docx'],
    ['ped_doctor.docx', 'ped_insured.docx', 'tata_ped_insured.docx'],
    ['accident_doctor.docx', 'accident_insured.docx', 'tata_accident_insured.docx'],
    ['infertile_doctor.docx', 'infertile_insured.docx', 'tata_infertile_insured.docx'],
    ['opd_doctor.docx', 'opd_insured.docx', 'tata_opd_insured.docx'],
    ['ci_doctor.docx', 'ci_insured.docx', 'tata_ci_insured.docx'],
  ];
  typenos = [
    ['ri_final_report.docx', 'tata_ri_final_report.docx'],
    ['cl_final_report.docx', 'tata_cl_final_report.docx'],
    ['bv_final_report.docx', 'tata_bv_final_report.docx'],
    ['pa_final_report.docx', 'tata_pa_final_report.docx'],
    ['mpa_final_report.docx', 'tata_mpa_final_report.docx'],
    ['ci_final_report.docx', 'tata_ci_final_report.docx'],
    ['li_final_report.docx', 'tata_li_final_report.docx'],
  ];
  docx: any;
  typesno: any;
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }
  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.apiservice.view_details(this.id).subscribe((res: any) => {
      this.table_data = res
      if (res.status == 'ok') {
        this.docx = this.cases[res.caseno];
        this.typesno = this.typenos[res.typeno];
        this.iname = res.iname;
      }
    })
  }
  invoice() {
    location.href = '/invoice/' + this.table_data.gicsid;
  }
  downloading1() {
    let template = this.typesno[0];
    if (this.iname == "TATA AIG General Insurance Company Limited") {
      template = this.typesno[1];
    }
    loadFile(
      "assets/template/" + template,
      (error: any, content: any) => {
        if (error) {
          throw error;
        }
        const zip = new PizZip(content);
        const doc = new Docxtemplater(zip, {
          paragraphLoop: true,
          linebreaks: true,
        });
        // render the document (replace all occurences of {first_name} by John, {last_name} by Doe, ...)
        doc.render(this.table_data);
        const blob = doc.getZip().generate({
          type: "blob",
          mimeType:
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
        });
        // Output the document using Data-URI
        saveAs(blob, template);
      }
    );
  }
  downloading2() {
    loadFile(
      "assets/template/" + this.docx[0],
      (error: any, content: any) => {
        if (error) {
          throw error;
        }
        const zip = new PizZip(content);
        const doc = new Docxtemplater(zip, {
          paragraphLoop: true,
          linebreaks: true,
        });
        // render the document (replace all occurences of {first_name} by John, {last_name} by Doe, ...)
        doc.render(this.table_data);
        const blob = doc.getZip().generate({
          type: "blob",
          mimeType:
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
        });
        // Output the document using Data-URI
        saveAs(blob, this.docx[0]);
      }
    );
  }
  downloading3() {
    let template = this.docx[1];
    if (this.iname == "TATA AIG General Insurance Company Limited") {
      template = this.docx[2];
    }
    loadFile(
      "assets/template/" + template,
      (error: any, content: any) => {
        if (error) {
          throw error;
        }
        const zip = new PizZip(content);
        const doc = new Docxtemplater(zip, {
          paragraphLoop: true,
          linebreaks: true,
        });
        // render the document (replace all occurences of {first_name} by John, {last_name} by Doe, ...)
        doc.render(this.table_data);
        const blob = doc.getZip().generate({
          type: "blob",
          mimeType:
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
        });
        // Output the document using Data-URI
        saveAs(blob, template);
      }
    );
  }

}
