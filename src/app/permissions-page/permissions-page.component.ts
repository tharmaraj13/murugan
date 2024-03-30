import { Component } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { ApiserviceService } from '../apiservice.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-permissions-page',
  templateUrl: './permissions-page.component.html',
  styleUrls: ['./permissions-page.component.scss']
})
export class PermissionsPageComponent {
  myForm: FormGroup | any;
  permissions: any;
  permissionObject: any;
  roles: any;
  listCol: any = Object();
  constructor(private apiservice: ApiserviceService) { }
  ngOnInit() {
    this.myForm = new FormGroup(
      {
        role_id: new FormControl('', Validators.required),
        home_page: new FormControl('', Validators.required),
      }
    );
    this.apiservice.view_roles().subscribe((res) => {
      this.roles = res;
    });
    this.apiservice.view_permissions().subscribe((res) => {
      this.permissions = [...res];
      this.permissionObject = {
        ...this.permissions.reduce((acc: any, obj: any) => {
          acc[obj.array_name] = obj;
          return acc;
        }, {})
      };
    });
  }
  onSubmit() {
    this.apiservice.save_new_permission(
      this.myForm.get('role_id').value,
      this.myForm.get('home_page').value,
      this.listCol
    ).subscribe((res) => {
      Swal.fire({
        title: 'Permission Updated Successfully',
        icon: 'success',
      })
    });
  }
  listCases() {
    var id = this.myForm.get('role_id').value;
    this.apiservice.view_permissions_id(id).subscribe((res) => {
      if (res.status == 'ok') {
        for (const [index, perm] of this.permissions.entries()) {
          this.permissions[index].value = false;
        }
        this.myForm.get('home_page').setValue(res.homepage);
        this.listCol = JSON.parse(res.permissions);
        for (const list in this.listCol) {
          const index = this.permissions.findIndex((obj: any) => obj.array_name === list);
          this.permissions[index].value = this.listCol[list];
        }
      }
    });
  }
  selectedColumns(e: any, caseid: any, array_name: any) {
    if (e.target.checked) {
      this.permissions[caseid].value = true;
      this.listCol[array_name] = true;
    }
    else {
      this.permissions[caseid].value = false;
      this.listCol[array_name] = false;
    }
  }
}
