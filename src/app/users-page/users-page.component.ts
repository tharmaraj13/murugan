import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-users-page',
  templateUrl: './users-page.component.html',
  styleUrls: ['./users-page.component.scss']
})
export class UsersPageComponent {
  myForm: FormGroup | any;
  table_data: any;
  dtOptions: any = {};
  roles: any;
  isEditMode: boolean = true;
  rolelist:any;
  needform=false;
  constructor(private apiservice: ApiserviceService) { }
  ngOnInit(): void {
    this.myForm = new FormGroup(
      {
        username: new FormControl(''),
        password: new FormControl(''),
        roles: new FormControl(''),
      }
    );
    this.dtOptions = {
      pagingType: 'full_numbers',
      pageLength: 30,
      processing: true,
      dom: 'Bfrtip',
      buttons: [
        'copy', 'csv', 'excel', 'print'
      ]
    };
    this.apiservice.view_users().subscribe((res) => {
      this.table_data = res;
    });
    this.apiservice.view_roles().subscribe((res) => {
      this.rolelist=res;
      const selectElement = document.createElement('select');
      res.forEach((e: any) => {
        const option = document.createElement('option');
        option.value = e.name;
        option.text = e.name;
        selectElement.appendChild(option);
      });
      this.roles = selectElement
    });
  }
  editFunction(id: any, e: any) {
    if (this.isEditMode) {
      const target = e.target as HTMLElement;
      const cells = target.parentElement?.parentElement?.querySelectorAll('td')
      cells?.forEach((e: any, index: any) => {
        if (index>0 && index < 3) {
          const inputElement = document.createElement('input');
          inputElement.value = e.textContent || '';
          e.innerHTML = '';
          e.appendChild(inputElement);
        } else if (index == 3) {
          e.innerHTML = '';
          e.appendChild(this.roles);
        } else if (index == 4) {
          e.querySelector('a').innerHTML = 'Save';
        }
      });
      this.isEditMode = false;
    } else {
      var datas = Array();
      datas.push(id);
      this.isEditMode = true;
      const target = e.target as HTMLElement;
      const cells = target.parentElement?.parentElement?.querySelectorAll('td');
      cells?.forEach((e: any, index: any) => {
        if (index != 0 && index < 3) {
          const text=e.querySelector('input').value
          datas.push(text);
          e.innerHTML=text;
        }
        else if (index == 3) {
          const text=e.querySelector('select').value
          datas.push(text);
          e.innerHTML=text;
        }
        else if (index == 4) {
          e.querySelector('a').innerHTML = 'Edit';
        }
      });
      this.apiservice.save_users(datas).subscribe((res) => {});
    }
  }
  delFunction(id: any, e: any) {
    const target = e.target as HTMLElement;
    const cells = target.parentElement?.parentElement;
    cells?.remove();
    this.apiservice.del_users(id).subscribe((res) => {});
  }
  onSubmit() {
    this.apiservice.save_new_user(
      this.myForm.get('username').value,
      this.myForm.get('password').value,
      this.myForm.get('roles').value
    ).subscribe((res) => {
      this.table_data = res;
      this.needform=false;
    });
  }
  newUser(){
    this.needform=true;
  }
}
