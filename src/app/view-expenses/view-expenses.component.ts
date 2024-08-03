import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { FormGroup, FormControl } from '@angular/forms';

@Component({
  selector: 'app-view-expenses',
  templateUrl: './view-expenses.component.html',
  styleUrls: ['./view-expenses.component.scss']
})
export class ViewExpensesComponent {
  myForm: FormGroup | any;
  table_data: any;
  showTable = false;
  dtOptions = {
    pagingType: 'full_numbers',
    pageLength: 30,
    processing: true,
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel', 'print']
  };
  constructor(private apiservice: ApiserviceService) { }
  userData = JSON.parse(this.apiservice.userData.permissions);
  ngOnInit(): void {
    let currentDate = new Date().toJSON().slice(0, 10);
    this.myForm = new FormGroup(
      {
        fromdate: new FormControl(currentDate),
        todate: new FormControl(currentDate),
      }
    );
    this.apiservice.view_expenses(undefined).subscribe((res) => {
      this.table_data = res;
      this.showTable = true;
    })
  }
  onSubmit() {
    this.showTable = false;
    this.apiservice.view_expenses_all(
      this.myForm.get('fromdate').value,
      this.myForm.get('todate').value,
    ).subscribe((res) => {
      this.table_data = res;
      this.showTable = true;
    })
  }
  remove(id: any) {
    var result = confirm("Are You sure?");
    if (result) {
      this.apiservice.del_expenses(id).subscribe((res) => {
        location.reload();
      })
    }
  }
}
