import { Component } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-add-expenses',
  templateUrl: './add-expenses.component.html',
  styleUrls: ['./add-expenses.component.scss']
})
export class AddExpensesComponent {
  myForm: FormGroup | any;
  id: any;
  staffs: any;
  expenseTypes: any;
  otherId: any;
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.myForm = new FormGroup({
      staff_id: new FormControl('', Validators.required),
      staff_name: new FormControl(''),
      e_date: new FormControl('', Validators.required),
      e_type_id: new FormControl('', Validators.required),
      amount: new FormControl('', Validators.required),
      payment_mode: new FormControl('', Validators.required),
      remarks: new FormControl('', Validators.required),
    });
    if (this.id) {
      this.apiservice.view_expenses(this.id).subscribe((res: any) => {
        if (res.status == 'ok') {
          this.myForm.get('staff_id').setValue(res.staff_id);
          this.myForm.get('staff_name').setValue(res.staff_name);
          this.myForm.get('e_date').setValue(res.e_date);
          this.myForm.get('e_type_id').setValue(res.e_type_id);
          this.myForm.get('amount').setValue(res.amount);
          this.myForm.get('payment_mode').setValue(res.payment_mode);
          this.myForm.get('remarks').setValue(res.remarks);
        }
      });
    }
    this.apiservice.view_staff().subscribe((res: any) => {
      this.staffs = res;
      if (res.length > 0) {
        const result = res.find((item: any) => item.sname === "Others");
        this.otherId = result.id;
      }

    });
    this.apiservice.view_expense_type(undefined).subscribe((res: any) => {
      this.expenseTypes = res;
    });
  }
  onSubmit() {
    this.myForm.markAllAsTouched();
    if (this.myForm.valid) {
      this.apiservice.add_expenses(
        this.myForm.get('staff_id').value,
        this.myForm.get('staff_name').value,
        this.myForm.get('e_date').value,
        this.myForm.get('e_type_id').value,
        this.myForm.get('amount').value,
        this.myForm.get('payment_mode').value,
        this.myForm.get('remarks').value,
        this.id).subscribe((res: any) => {
          if (res.status == 'ok') {
            Swal.fire({
              title: 'Expense Added Successfully',
              icon: 'success',
            })
            this.myForm.reset();
            this.router.navigate(['view-expenses']);
          }
        })
    }
  }
}
