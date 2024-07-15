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
    this.apiservice.view_bulk_invoice_report().subscribe((res) => {
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
}
