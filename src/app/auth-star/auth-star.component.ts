import { Component } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import jsPDF from 'jspdf';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-auth-star',
  templateUrl: './auth-star.component.html',
  styleUrls: ['./auth-star.component.scss']
})
export class AuthStarComponent {
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }
  id: any;
  eid: any;
  table_data: any
  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.eid = this.route.snapshot.params['eid'];
    this.apiservice.view_auth(this.id, this.eid).subscribe((res: any) => {
      this.table_data = res;
    });
  }
  ngAfterViewInit() {
    var elem = <HTMLElement>document.querySelector('body');
    elem.style.backgroundImage = 'none';
    elem.style.background = '#525252';
    elem.style.fontFamily = '"Times New Roman", Times, serif';
  }
  async downloadPdf() {
    let width = document.querySelector('#invoice')!.clientWidth + 1;
    let height = document.querySelector('#invoice')!.clientHeight + 1;
    let doc = new jsPDF('p', 'px', [width, height]);
    await doc.html(document.querySelector('#invoice') as HTMLElement)
    doc.output('pdfobjectnewwindow');
  }
}
