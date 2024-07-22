import { Component } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { ActivatedRoute } from '@angular/router';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-ibulk-invoice-annexure',
  templateUrl: './ibulk-invoice-annexure.component.html',
  styleUrls: ['./ibulk-invoice-annexure.component.scss']
})
export class IbulkInvoiceAnnexureComponent {
  table_data: any;
  id: any;
  dtOptions: any;
  claim_no: any;
  constructor(private apiservice: ApiserviceService, private titleService: Title, private route: ActivatedRoute) { }
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
    this.id = this.route.snapshot.params['id'];
    this.apiservice.view_ibulk_invoice_annexure(this.id).subscribe((res: any) => {
      this.table_data = res;
      if (res.length > 0) {
        this.claim_no = res[0].iname
        this.titleService.setTitle('Annexures - ' + res[0].iname);
      }
    })
  }
}
