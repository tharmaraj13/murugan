import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-sales-report',
  templateUrl: './sales-report.component.html',
  styleUrls: ['./sales-report.component.scss']
})
export class SalesReportComponent {
  myForm: FormGroup | any;
  prod_names: any;
  insurance: any;
  vendor_names: any;
  table_data: any;
  dtOptions: any = {};
  constructor(private apiservice: ApiserviceService) { }
  ngAfterViewInit(): void {
    this.apiservice.view_vendors().subscribe((res) => {
      this.vendor_names = res;
    })
    this.apiservice.view_names().subscribe((res) => {
      this.prod_names = res;
    })
    this.apiservice.view_insurance().subscribe((res) => {
      this.insurance = res;
    })
  }
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
    let currentDate = new Date().toJSON().slice(0, 10);
    this.myForm = new FormGroup(
      {
        fromdate: new FormControl(currentDate),
        todate: new FormControl(currentDate),
        ifromdate: new FormControl(currentDate),
        itodate: new FormControl(currentDate),
        claimno:new FormControl('')
      }
    );
    this.apiservice.view_sales().subscribe((res) => {
      this.table_data = res;
    })
  }
  onSubmit() {
    this.apiservice.view_sales_all(
      this.myForm.get('fromdate').value,
      this.myForm.get('todate').value,
      this.myForm.get('ifromdate').value,
      this.myForm.get('itodate').value,
      this.myForm.get('claimno').value
    ).subscribe((res) => {
      this.table_data = res;
    })
  }
  remove(id:any) {
    var result = confirm("Are You sure?");
    if (result) {
      this.apiservice.del_intimation(id).subscribe((res) => {
        location.reload();
      })
    }
  }
}
