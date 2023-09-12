import { Component } from '@angular/core';
import { ApiserviceService } from '../apiservice.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent {
  constructor(private apiservice: ApiserviceService,private router: Router) { }
  ngOnInit(): void {
    this.apiservice.checking().subscribe((res: any) => {
      if (res.status == 'error') {
        this.router.navigate(['login']);
      }
      if (res.status == 'ok') {
      }
    })
  }
  signout(){
    this.apiservice.signout();
    this.router.navigate(['login']);
  }
}
