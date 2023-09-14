import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { CookieService } from 'ngx-cookie-service';

@Injectable({
  providedIn: 'root'
})
export class ApiserviceService {
  // website = "http://10.10.10.195/mur_api/";
  // website = "http://3.94.116.52/api/";
  website = "/api/";
  constructor(private http: HttpClient, private Cookies: CookieService) { }
  checking(): Observable<Object> {
    var token = this.Cookies.get('token');
    if (token == '') { token = 'empty' };
    var url = this.website+'/token.php';
    var formData = new FormData();
    formData.append("token", token);
    return this.http.post(url, formData);
  }
  signin(username:any,password:any): Observable<Object> {
    var url = this.website + 'signin.php';
    var formData = new FormData();
    formData.append("username", username);
    formData.append("password", password);
    return this.http.post(url, formData);
  }
  settoken(token:any){
    this.Cookies.set('token', token);
  }
  signout() {
    var token = this.Cookies.get('token');
    if (token == '') { token = 'empty' }
    else {
      this.Cookies.delete('token');
    }
  }
  add_products(data: any): Observable<Object> {
    var url = this.website + 'new_intimation.php';
    var formData = new FormData();
    formData.append("values", JSON.stringify(data));
    return this.http.post(url, formData);
  }
  add_hospital(hname: any,hplace:any,id:any): Observable<Object> {
    var url = this.website + 'add_hospital.php';
    var formData = new FormData();
    formData.append("hname", hname);
    formData.append("hplace", hplace);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  add_vendor(vname: any,id:any): Observable<Object> {
    var url = this.website + 'add_vendor.php';
    var formData = new FormData();
    formData.append("vname", vname);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  add_insurance(iname: any,id:any,address1:any,address2:any,gstin:any,gst_type:any): Observable<Object> {
    var url = this.website + 'add_insurance.php';
    var formData = new FormData();
    formData.append("iname", iname);
    formData.append("address1", address1);
    formData.append("address2", address2);
    formData.append("gstin", gstin);
    formData.append("id", id);
    formData.append("gst_type", gst_type);
    return this.http.post(url, formData);
  }
  add_company(iname:any,pan:any,gstin:any,hsn:any,description:any,bank:any,branch:any,accno:any,ifsc:any): Observable<Object> {
    var url = this.website + 'add_company.php';
    var formData = new FormData();
    formData.append("iname", iname);
    formData.append("pan", pan);
    formData.append("gstin", gstin);
    formData.append("hsn", hsn);
    formData.append("description", description);
    formData.append("bank", bank);
    formData.append("branch", branch);
    formData.append("accno", accno);
    formData.append("ifsc", ifsc);
    return this.http.post(url, formData);
  }
  view_company(): Observable<Object> {
    var url = this.website + 'view_company.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_insurance(): Observable<Object> {
    var url = this.website + 'view_insurance.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_invoice(id:any): Observable<Object> {
    var url = this.website + 'view_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_insurance_id(id:any): Observable<Object> {
    var url = this.website + 'view_insurance_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_sales_id(id:any): Observable<Object> {
    var url = this.website + 'view_intimation_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_names(): Observable<Object> {
    var url = this.website + 'view_hospitals.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_hospitals_id(id:any): Observable<Object> {
    var url = this.website + 'view_hospitals_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_vendors(): Observable<Object> {
    var url = this.website + 'view_vendors.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_vendors_id(id:any): Observable<Object> {
    var url = this.website + 'view_vendors_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_sales(): Observable<Object> {
    var url = this.website + 'view_intimation.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_sales_all(fdate:any,tdate:any,claimno:any): Observable<Object> {
    var url = this.website + 'view_intimation_all.php';
    var formData = new FormData();
    formData.append("fdate", fdate);
    formData.append("tdate", tdate);
    formData.append("claimno", claimno);
    return this.http.post(url, formData);
  }
  view_details(gicsid:any): Observable<Object> {
    var url = this.website + 'view_details.php';
    var formData = new FormData();
    formData.append("gicsid", gicsid);
    return this.http.post(url, formData);
  }
  del_hospital(id:any): Observable<Object> {
    var url = this.website + 'del_hospital.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_intimation(id:any): Observable<Object> {
    var url = this.website + 'del_intimation.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_vendors(id:any): Observable<Object> {
    var url = this.website + 'del_vendors.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_insurance(id:any): Observable<Object> {
    var url = this.website + 'del_insurance.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
}