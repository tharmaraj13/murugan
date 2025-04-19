import { Component } from '@angular/core';
import Docxtemplater from "docxtemplater";
import PizZip from "pizzip";
import PizZipUtils from "pizzip/utils/index.js";
import { saveAs } from "file-saver";
import { ApiserviceService } from '../apiservice.service';
import { ActivatedRoute, Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import * as Handlebars from 'handlebars';
import TurndownService from 'turndown';

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
  reportData: any = [];
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
  keys = ["insured_findings", "hospital_records", "other_findings", "evidences", "final_recommendation"];
  docx: any;
  typesno: any;
  constructor(private apiservice: ApiserviceService, private http: HttpClient, private router: Router, private route: ActivatedRoute) { }
  turndownService = new TurndownService();
  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.apiservice.view_details(this.id).subscribe((res: any) => {
      this.table_data = res
      if (res.status == 'ok') {
        this.reportData = res?.reportData || [];
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
  downloading4() {
    const fromTable = this.reportData?.reduce((acc: any, report: any, index: number) => {
      acc[this.keys[index]] = report.html_value;
      return acc;
    }, {});
    this.http.get('assets/template/template.html', { responseType: 'text' }).subscribe((html) => {
      const template = Handlebars.compile(html);
      const result = template({
        pname: this.table_data.pname,
        claimno: this.table_data.claimno,
        hname: this.table_data.hname,
        hplace: this.table_data.hplace,
        triggers: this.table_data.triggers,
        doi: this.table_data.doi,
        doj: this.table_data.doj,
        doa: this.table_data.doa,
        ...fromTable,
      });
      this.http.post(this.apiservice.website + 'convert.php', {
        html: result
      }, { responseType: 'blob' }).subscribe((blob) => {
        saveAs(blob, 'final_report.docx');
      });
    });
  }
  downloading5() {
    const fromTable = this.reportData?.reduce((acc: any, report: any, index: number) => {
      acc[this.keys[index]] = this.turndownService.turndown(report.html_value);
      return acc;
    }, {});
    const doc_name = "default_report.docx";
    loadFile(
      "assets/template/" + doc_name,
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
        doc.render({
          pname: this.table_data.pname,
          claimno: this.table_data.claimno,
          hname: this.table_data.hname,
          hplace: this.table_data.hplace,
          triggers: this.table_data.triggers,
          doi: this.table_data.doi,
          doj: this.table_data.doj,
          doa: this.table_data.doa,
          ...fromTable,
        });
        const blob = doc.getZip().generate({
          type: "blob",
          mimeType:
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
        });
        // Output the document using Data-URI
        saveAs(blob, "final_report.docx");
      }
    );
  }
}
