import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-auth-letters',
  templateUrl: './auth-letters.component.html',
  styleUrls: ['./auth-letters.component.scss']
})
export class AuthLettersComponent {
  staff_names: any;
  table_data: any;
  dtOptions: any = {};
  constructor(private apiservice: ApiserviceService) { }

  ngOnInit(): void {
    this.dtOptions = {
      pagingType: 'full_numbers',
      pageLength: 30,
      processing: true,
      dom: 'Bfrtip',
      buttons: [
        'copy', 'csv', 'excel', 'print'
      ]
    };
    this.apiservice.view_sales(true).subscribe((res) => {
      this.table_data = res;
    });
    this.apiservice.view_staff().subscribe((res) => {
      this.staff_names = res;
    });
  }
  create(id: any, iname: any) {
    var eid = <HTMLInputElement>document.querySelector('#staff_name'+id)
    if (iname == 'Aditya Birla Health Insurance Co Limited') {
      window.open(`/aditya-letter/${id}/${eid.value}`)
      window.open(`/gics-letter/${id}/${eid.value}`)
      // location.href = `/aditya-letter/${id}/${eid.value}`
    } else if (iname == 'TATA AIG General Insurance Company Limited') {
      window.open(`/tata-letter/${id}/${eid.value}`)
      window.open(`/gics-letter/${id}/${eid.value}`)
      // location.href = `/tata-letter/${id}/${eid.value}`
    }
    else if (iname == 'CHOLA MS GENERAL INSURANCE COMPANY LIMITED') {
      window.open(`/chola-letter/${id}/${eid.value}`)
      window.open(`/gics-letter/${id}/${eid.value}`)
      // location.href = `/tata-letter/${id}/${eid.value}`
    }
    else if (iname == 'Reliance General Insurance Company Limited') {
      window.open(`/reliance-letter/${id}/${eid.value}`)
      window.open(`/gics-letter/${id}/${eid.value}`)
      // location.href = `/tata-letter/${id}/${eid.value}`
    }
    // else if (iname == 'CHOLA MS GENERAL INSURANCE COMPANY LIMITED') {
    //   location.href = `/gics-letter/${id}/${eid.value}`
    // }
  }
}
