import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-ibulk-invoice-report',
  templateUrl: './ibulk-invoice-report.component.html',
  styleUrls: ['./ibulk-invoice-report.component.scss']
})
export class IbulkInvoiceReportComponent {
  table_data: any;
  dtOptions: any = {};
  updated: any = {};
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
    this.apiservice.view_ibulk_invoice_report().subscribe((res) => {
      this.table_data = res;
    })
  }
  remove(id: any) {
    var result = confirm("Are You sure?");
    if (result) {
      this.apiservice.del_invoice(id).subscribe((res) => {
        location.reload();
      })
    }
  }
  handleKeyDown(event: KeyboardEvent) {
    if (event.key === ' ' || event.key === 'Enter') {
      event.preventDefault(); // Prevent default action to avoid scrolling
      (event.target as HTMLElement).click(); // Simulate a click event
    }
  }
  save_paid_details(id: any) {
    var payment = document.querySelector<HTMLInputElement>('#paid_' + id)!.value;
    var paidDate = document.querySelector<HTMLInputElement>('#paid_date_' + id)!.value;
    
    if (payment && paidDate) {
      this.apiservice.save_paid_idetails(id, payment, paidDate).subscribe((res) => {
        document.querySelector<HTMLInputElement>('#paid_date_' + id)!.parentElement!.innerHTML = res.paid_date
        document.querySelector<HTMLInputElement>('#paid_' + id)!.parentElement!.innerHTML = res.payment
        this.updated[id] = true;
      });
    }
  }
}
