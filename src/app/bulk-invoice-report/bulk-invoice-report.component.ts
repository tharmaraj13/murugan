import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-bulk-invoice-report',
  templateUrl: './bulk-invoice-report.component.html',
  styleUrls: ['./bulk-invoice-report.component.scss']
})
export class BulkInvoiceReportComponent {
  table_data: any;
  dtOptions: any = {};
  constructor(private apiservice:ApiserviceService) {}
  ngOnInit(): void{
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
}
