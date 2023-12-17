import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { Router, ActivatedRoute } from '@angular/router';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-bulk-invoice-annexure',
  templateUrl: './bulk-invoice-annexure.component.html',
  styleUrls: ['./bulk-invoice-annexure.component.scss']
})
export class BulkInvoiceAnnexureComponent {
  table_data: any;
  id:any;
  dtOptions: any;
  claim_no:any;
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
    this.apiservice.view_bulk_invoice_annexure(this.id).subscribe((res:any) => {
      this.table_data = res;
      if(res.length>0){
        this.claim_no=res[0].iname
        this.titleService.setTitle('Annexures - '+ res[0].iname);
      }
    })
  }
}
