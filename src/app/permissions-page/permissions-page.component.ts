import { Component } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-permissions-page',
  templateUrl: './permissions-page.component.html',
  styleUrls: ['./permissions-page.component.scss']
})
export class PermissionsPageComponent {
  myForm: FormGroup | any;
  table_data: any;
  constructor(private apiservice: ApiserviceService) { }
  ngOnInit() {
    this.myForm = new FormGroup(
      {
        newuser: new FormControl(false),
        viewuser: new FormControl(false),
        newintimation: new FormControl(false),
      }
    );
  }
  onSubmit() {
    this.apiservice.save_new_user(
      this.myForm.get('newuser').value,
      this.myForm.get('viewuser').value,
      this.myForm.get('newintimation').value
    ).subscribe((res) => {
      this.table_data = res;
    });
  }
}
