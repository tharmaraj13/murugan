import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-ibulk-invoice',
  templateUrl: './ibulk-invoice.component.html',
  styleUrls: ['./ibulk-invoice.component.scss']
})
export class IbulkInvoiceComponent {
  myForm: FormGroup | any;
  insurance: any;
  id: any;
  table_data: any;
  dtOptions: any;
  selection = Array();
  preSelection = Array();
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
    this.myForm = new FormGroup(
      {
        insurance_tpa: new FormControl({ value: '', disabled: true }, Validators.required),
        invoice_date: new FormControl('', Validators.required),
      }
    );
    this.id = this.route.snapshot.params['id'];
    if (this.id == undefined) {
      this.myForm.get('insurance_tpa')?.enable();
    } else {
      this.apiservice.view_intimation_binvoice_id(this.id).subscribe((res: any) => {
        this.table_data = res.data;
        this.selection = res.selected;
        this.preSelection = [...res.selected];
        this.myForm.get('insurance_tpa').setValue(res.insurance_tpa);
        this.myForm.get('invoice_date').setValue(res.created_date);
      });
    }
  }
  listCases() {
    this.selection = [];
    var iname = this.myForm.get('insurance_tpa').value
    this.apiservice.view_intimation_binvoice(iname).subscribe((res) => {
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
      var iname = this.myForm.get('insurance_tpa').value
      var date = this.myForm.get('invoice_date').value
      this.apiservice.new_bulk_invoice(iname, date, this.selection, this.preSelection, this.id).subscribe((res: any) => {
        Swal.fire({
          title: 'Invoice Created Successfully',
          icon: 'success',
        });
        this.router.navigate(['ibulk-invoice/' + res.id])
      });
    } else {
      Swal.fire({
        title: 'No Cases Selected',
        icon: 'warning',
      });
    }
  }
}
