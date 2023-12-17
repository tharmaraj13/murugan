import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { ApiserviceService } from '../apiservice.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-bulk-invoice',
  templateUrl: './bulk-invoice.component.html',
  styleUrls: ['./bulk-invoice.component.scss']
})
export class BulkInvoiceComponent {
  myForm: FormGroup | any;
  insurance: any;
  id: any;
  table_data: any;
  dtOptions: any;
  selection = Array();
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }
  ngAfterViewInit(): void {
    this.apiservice.view_insurance().subscribe((res) => {
      this.insurance = res;
    });
  }
  ngOnInit() {
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
    this.myForm = new FormGroup(
      {
        insurance_tpa: new FormControl('', Validators.required),
        invoice_date: new FormControl('', Validators.required),
      }
    );
  }
  listCases() {
    this.selection = [];
    var iname = this.myForm.get('insurance_tpa').value
    this.apiservice.view_intimation_invoice(iname).subscribe((res) => {
      this.table_data = res;
    });
  }
  selectedCases(e: any, caseid: any) {
    if (e.target.checked) {
      this.selection.push(caseid)
    }
    else {
      this.selection.splice(this.selection.indexOf(caseid), 1);
    }
  }
  onSubmit() {
    this.myForm.markAllAsTouched();
    if (this.selection.length > 0 && this.myForm.valid) {
      console.log(this.selection)
      var iname=this.myForm.get('insurance_tpa').value
      var date=this.myForm.get('invoice_date').value
      this.apiservice.new_bulk_invoice(iname,date,this.selection).subscribe((res:any) => {
        Swal.fire({
          title: 'Intimation Added Successfully',
          icon: 'success',
        });
        this.router.navigate(['bulk-invoice/' + res.id])
      });
    } else {
      Swal.fire({
        title: 'No Cases Selected',
        icon: 'warning',
      });
    }
  }
}
