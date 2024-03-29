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
  userData = this.apiservice.userData;
  permissions = JSON.parse(this.apiservice.userData.permissions);
  ngOnInit(): void {
  }
  ngAfterViewInit(){
    document.querySelector('.mobile-toggle-menu')!.addEventListener('click',()=>{
      document.querySelector('.wrapper')!.classList.add('toggled')
    });
    document.querySelector('.toggle-icon')!.addEventListener('click',()=>{
      document.querySelector('.wrapper')!.classList.contains('toggled') ? 
      document.querySelector('.wrapper')!.classList.remove('toggled') : 
      document.querySelector('.wrapper')!.classList.add('toggled');
    });
  }
  signout(){
    this.apiservice.signout();
    this.router.navigate(['login']);
  }
}
