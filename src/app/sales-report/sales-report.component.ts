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
  showTable = false;
  updated: any = {};

  columnList = [
    { name: 'Patient Name', id: 0, value: true },
    { name: 'Claim Type', id: 1, value: true },
    { name: 'Insurance/TPA', id: 2, value: true },
    { name: 'Date of Intimation', id: 3, value: true },
    { name: 'Claim Number', id: 4, value: true },
    { name: 'Invoice Number', id: 5, value: true },
    { name: 'Invoice Date', id: 6, value: true },
    { name: 'Fees', id: 7, value: true },
    { name: 'Incentive', id: 8, value: true },
    { name: 'MRD', id: 9, value: true },
    { name: 'Transport', id: 10, value: true },
    { name: 'Payment Details', id: 11, value: true },
    { name: 'Payment Date', id: 12, value: true },
    { name: 'Hospital Name', id: 13, value: false },
    { name: 'OP No', id: 14, value: false },
    { name: 'IP No', id: 15, value: false },
    { name: 'Type of Policy', id: 16, value: false },
    { name: 'Assigned To', id: 17, value: false },
  ];
  constructor(private apiservice: ApiserviceService) { }
  ngAfterViewInit(): void {

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
        claimno: new FormControl('')
      }
    );
    this.apiservice.view_sales().subscribe((res) => {
      this.table_data = res;
      this.showTable = true;
    })
  }
  onSubmit() {
    this.showTable = false;
    this.apiservice.view_sales_all(
      this.myForm.get('fromdate').value,
      this.myForm.get('todate').value,
      this.myForm.get('ifromdate').value,
      this.myForm.get('itodate').value,
      this.myForm.get('claimno').value
    ).subscribe((res) => {
      this.table_data = res;
      this.showTable = true;
    })
  }
  remove(id: any) {
    var result = confirm("Are You sure?");
    if (result) {
      this.apiservice.del_intimation(id).subscribe((res) => {
        location.reload();
      })
    }
  }
  save_paid_details(id: any) {
    var payment = document.querySelector<HTMLInputElement>('#paid_' + id)!.value
    var paidDate = document.querySelector<HTMLInputElement>('#paid_date_' + id)!.value

    this.apiservice.save_paid_details(id, payment, paidDate).subscribe((res) => {
      document.querySelector<HTMLInputElement>('#paid_date_' + id)!.parentElement!.innerHTML = res.paid_date
      document.querySelector<HTMLInputElement>('#paid_' + id)!.parentElement!.innerHTML = res.payment
      this.updated[id] = true;
    })
  }
  selectedColumns(e: any, caseid: any) {
    this.showTable = false;
    if (e.target.checked) {
      this.columnList[caseid].value = true;
      setTimeout(() => {
        this.showTable = true;
      }, 10);
    }
    else {
      this.columnList[caseid].value = false;
      setTimeout(() => {
        this.showTable = true;
      }, 10);
    }
  }
}
