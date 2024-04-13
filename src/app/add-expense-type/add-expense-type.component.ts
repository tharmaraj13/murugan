import { Component } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-add-expense-type',
  templateUrl: './add-expense-type.component.html',
  styleUrls: ['./add-expense-type.component.scss']
})
export class AddExpenseTypeComponent {
  myForm: FormGroup | any;
  id: any;
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit() {
    this.id = this.route.snapshot.params['id'];
    this.myForm = new FormGroup(
      {
        ename: new FormControl('', Validators.required),
      }
    );
    if (this.id) {
      this.apiservice.view_expense_type(this.id).subscribe((res: any) => {
        if (res.status == 'ok') {
          this.myForm.get('ename').setValue(res.ename);
        }
      });
    }
  }

  onSubmit() {
    this.myForm.markAllAsTouched();
    // alert('Data Added Successfully');
    if (this.myForm.valid) {
      this.apiservice.add_expense_type(this.myForm.get('ename').value, this.id).subscribe((res: any) => {
        if (res.status == 'ok') {
          Swal.fire({
            title: 'Expense Type Added Successfully',
            icon: 'success',
          })
          this.myForm.reset();
          this.router.navigate(['view-expense-type']);
        }
        else {
          Swal.fire({
            title: 'Expense Type Already Exist',
            icon: 'warning',
          })
        }
      })
    }
  }
}
