import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';

@Component({
  selector: 'app-view-expenses',
  templateUrl: './view-expenses.component.html',
  styleUrls: ['./view-expenses.component.scss']
})
export class ViewExpensesComponent {
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
  ngAfterViewInit(): void {
    this.apiservice.view_expenses(undefined).subscribe((res) => {
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
