import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, Router } from '@angular/router';
import { ApiserviceService } from './apiservice.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuardGuard {
  constructor(private apiservice: ApiserviceService, private router: Router) { }
  async canActivate(route: ActivatedRouteSnapshot) {
    const url: any = route.url[0]?.path;
    let data = this.apiservice.userData;
    if (Object.keys(data).length === 0 || data.status != 'ok') {
      data = this.apiservice.checking();
      this.apiservice.userData = data;
    }
    if (data.status !== 'ok') {
      if (url === 'login' || !route.routeConfig?.path) return true;
      this.router.navigate(['login']);
      return false;
    }
    const permissions = JSON.parse(data.permissions || '{}');

    // If user tries to access login page while logged in, redirect to homepage
    if (url === 'login' || !route.routeConfig?.path) {
      this.router.navigate([data.homepage]);
      return false;
    }

    // Check if the user has permission for this route
    if (!permissions[url]) {
      this.router.navigate(['404-page']);
      return false;
    }

    return true;
  }

}
