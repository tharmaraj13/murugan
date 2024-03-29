import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, Router, RouterStateSnapshot } from '@angular/router';
import { ApiserviceService } from './apiservice.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuardGuard {
  constructor(private apiservice: ApiserviceService, private router: Router) { }
  async canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot) {
    const url: any = route.url[0]?.path;
    const url1: any = route.routeConfig?.path;
    let data = this.apiservice.userData;
    if (Object.keys(this.apiservice.userData).length === 0 || this.apiservice.userData.status != 'ok') {
      data = this.apiservice.checking();
      this.apiservice.userData = data;
    }
    if (data.status == 'ok') {
      const permissions = JSON.parse(data.permissions);
      if (url1 == '' || url == 'login') {
        this.router.navigate([data.homepage]);
      }
      else if (!permissions[url]) {
        this.router.navigate(['404-page']);
      }
      return true;
    } else {
      if (url1 == '' || url == 'login') {
        return true;
      }
    }
    this.router.navigate(['login']);
    return false;
  }

}
