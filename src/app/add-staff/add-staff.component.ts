import { Component } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import Swal from 'sweetalert2';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-add-staff',
  templateUrl: './add-staff.component.html',
  styleUrls: ['./add-staff.component.scss']
})
export class AddStaffComponent {
  constructor(private apiservice: ApiserviceService, private router: Router, private route: ActivatedRoute) { }
  myForm: FormGroup | any;
  prod_names: any;
  id: any;
  files: any = '';

  ngOnInit(): void {
    this.apiservice.view_names().subscribe((res) => {
      this.prod_names = res;
    });
    this.id = this.route.snapshot.params['id'];
    this.myForm = new FormGroup(
      {
        sname: new FormControl('', Validators.required),
        designation: new FormControl('', Validators.required),
        blood: new FormControl('', Validators.required),
        contact: new FormControl('', Validators.required),
      }
    );
    this.apiservice.view_staff_id(this.id).subscribe((res: any) => {
      if (res.status == 'ok') {
        this.myForm.get('sname').setValue(res.sname);
        this.myForm.get('designation').setValue(res.designation);
        this.myForm.get('blood').setValue(res.blood);
        this.myForm.get('contact').setValue(res.contact);
      }
    });
  }
  readThis(e: any) {
    this.files = e.target.files[0];
  }
  onSubmit() {
    this.myForm.markAllAsTouched();
    if (this.myForm.valid) {
      var data = Array();
      data.push(this.myForm.get('sname').value);
      data.push(this.myForm.get('designation').value);
      data.push(this.myForm.get('blood').value);
      data.push(this.myForm.get('contact').value);
      data.push(this.id);
      this.apiservice.add_staff(data, this.files).subscribe((res: any) => {
        Swal.fire({
          title: 'Advance Added Successfully',
          icon: 'success',
        });
        this.router.navigate(['view-staff'])
      });
    }
  }
}
