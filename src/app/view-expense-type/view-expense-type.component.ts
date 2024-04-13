import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-view-expense-type',
  templateUrl: './view-expense-type.component.html',
  styleUrls: ['./view-expense-type.component.scss']
})
export class ViewExpenseTypeComponent {
  table_data: any;
  constructor(private apiservice: ApiserviceService) { }
  userData = JSON.parse(this.apiservice.userData.permissions);
  ngAfterViewInit(): void {
    this.apiservice.view_expense_type(undefined).subscribe((res) => {
      this.table_data = res;
    })
  }
  remove(id: any) {
    var result = confirm("Are You sure?");
    if (result) {
      this.apiservice.del_expense_type(id).subscribe((res) => {
        location.reload();
      })
    }
  }
}
