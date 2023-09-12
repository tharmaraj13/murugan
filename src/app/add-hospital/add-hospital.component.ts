import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ApiserviceService } from '../apiservice.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-add-hospital',
  templateUrl: './add-hospital.component.html',
  styleUrls: ['./add-hospital.component.scss']
})
export class AddHospitalComponent {
  myForm: FormGroup | any;
  id:any;
  constructor(private apiservice: ApiserviceService, private router: Router,private route: ActivatedRoute) { }

  ngOnInit(){
    this.id = this.route.snapshot.params['id'];
    this.myForm = new FormGroup(
      {
        hname: new FormControl('', Validators.required),
        hplace: new FormControl('', Validators.required),
      }
    );
    this.apiservice.view_hospitals_id(this.id).subscribe((res:any) => {
      if(res.status=='ok'){
        this.myForm.get('hname').setValue(res.hname);
        this.myForm.get('hplace').setValue(res.hplace);
      }
    })
  }

  onSubmit() {
    this.myForm.markAllAsTouched();
    // alert('Data Added Successfully');
    if (this.myForm.valid) {
      this.apiservice.add_hospital(this.myForm.get('hname').value,this.myForm.get('hplace').value,this.id).subscribe((res: any) => {
        if(res.status=='ok'){
          Swal.fire({
            title: 'Hospital Added Successfully',
            icon: 'success',
          })
          this.myForm.reset();
          location.href="/hospitals"
        }
        else{
          Swal.fire({
            title: 'Hospital Already Exist',
            icon: 'warning',
          })
        }
      })
    }
  }
}
