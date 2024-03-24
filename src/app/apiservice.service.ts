import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { CookieService } from 'ngx-cookie-service';
import * as CryptoJS from 'crypto-js';

@Injectable({
  providedIn: 'root'
})
export class ApiserviceService {
  // website = "http://10.10.10.195/mur_api/";
  // private website = "http://3.94.116.52/api/";
  private website = "/api/";
  // Secret key for JWT
  userData = Object();
  private secretKey: string = 'asdfasdfqwerty';
  constructor(private http: HttpClient, private Cookies: CookieService) { }
  // Encrypt JSON data and return JWT token
  encrypt(data: any): string {
    return CryptoJS.AES.encrypt(JSON.stringify(data), this.secretKey).toString();
  }
  // Decrypt JWT token and return JSON data
  decrypt(token: string): any {
    try {
      const decryptedData = CryptoJS.AES.decrypt(token, this.secretKey).toString(CryptoJS.enc.Utf8);
      return JSON.parse(decryptedData);
    } catch (error: any) {
      console.log('JWT Verification failed:', error.message);
      return { status: 'error' };
    }
  }
  checking(): any {
    var token = this.Cookies.get('token');
    const data = this.decrypt(token);
    return data;
  }
  signin(username: any, password: any): Observable<Object> {
    var url = this.website + 'signin.php';
    var formData = new FormData();
    formData.append("username", username);
    formData.append("password", password);
    return this.http.post(url, formData);
  }
  settoken(data: any) {
    const token = this.encrypt(data);
    this.Cookies.set('token', token);
  }
  signout() {
    var token = this.Cookies.get('token');
    if (token == '') { token = 'empty' }
    else {
      this.Cookies.delete('token');
      this.userData = Object();
    }
  }
  add_products(data: any): Observable<Object> {
    var url = this.website + 'new_intimation.php';
    var formData = new FormData();
    formData.append("values", JSON.stringify(data));
    return this.http.post(url, formData);
  }
  add_hospital(hname: any, hplace: any, id: any): Observable<Object> {
    var url = this.website + 'add_hospital.php';
    var formData = new FormData();
    formData.append("hname", hname);
    formData.append("hplace", hplace);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  add_vendor(vname: any, id: any): Observable<Object> {
    var url = this.website + 'add_vendor.php';
    var formData = new FormData();
    formData.append("vname", vname);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  add_insurance(iname: any, id: any, address1: any, address2: any, gstin: any, gst_type: any): Observable<Object> {
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
  add_company(iname: any, pan: any, gstin: any, hsn: any, description: any, bank: any, branch: any, accno: any, ifsc: any): Observable<Object> {
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
  view_invoice(id: any): Observable<Object> {
    var url = this.website + 'view_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_bulk_invoice(id: any): Observable<Object> {
    var url = this.website + 'view_bulk_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_bulk_invoice_annexure(id: any): Observable<Object> {
    var url = this.website + 'view_bulk_invoice_annexure.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_bulk_invoice_report(): Observable<Object> {
    var url = this.website + 'view_bulk_invoice_report.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_insurance_id(id: any): Observable<Object> {
    var url = this.website + 'view_insurance_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_sales_id(id: any): Observable<Object> {
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
  view_hospitals_id(id: any): Observable<Object> {
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
  view_vendors_id(id: any): Observable<Object> {
    var url = this.website + 'view_vendors_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_sales(alldata: any): Observable<Object> {
    var url = this.website + 'view_intimation.php';
    var formData = new FormData();
    formData.append("alldata", alldata);
    return this.http.post(url, formData);
  }
  view_sales_all(fdate: any, tdate: any, ifdate: any, itdate: any, claimno: any, alldata: any): Observable<Object> {
    var url = this.website + 'view_intimation_all.php';
    var formData = new FormData();
    formData.append("fdate", fdate);
    formData.append("tdate", tdate);
    formData.append("ifdate", ifdate);
    formData.append("itdate", itdate);
    formData.append("claimno", claimno);
    formData.append("alldata", alldata);
    return this.http.post(url, formData);
  }
  view_details(gicsid: any): Observable<Object> {
    var url = this.website + 'view_details.php';
    var formData = new FormData();
    formData.append("gicsid", gicsid);
    return this.http.post(url, formData);
  }
  del_hospital(id: any): Observable<Object> {
    var url = this.website + 'del_hospital.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_intimation(id: any): Observable<Object> {
    var url = this.website + 'del_intimation.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_invoice(id: any): Observable<Object> {
    var url = this.website + 'del_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_vendors(id: any): Observable<Object> {
    var url = this.website + 'del_vendors.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_insurance(id: any): Observable<Object> {
    var url = this.website + 'del_insurance.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }

  add_staff(data: any, file: any): Observable<Object> {
    var url = this.website + 'add_staff.php';
    var formData = new FormData();
    formData.append("values", JSON.stringify(data));
    formData.append("file", file);
    formData.append("filestat", 'Y');
    if (file == '') {
      formData.append("filestat", 'N');
    }
    return this.http.post(url, formData);
  }
  view_staff_id(id: any): Observable<Object> {
    var url = this.website + 'view_staff_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_staff(): Observable<Object> {
    var url = this.website + 'view_staff.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  del_staff(id: any): Observable<Object> {
    var url = this.website + 'del_staff.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_auth(id: any, eid: any): Observable<Object> {
    var url = this.website + 'view_auth.php';
    var formData = new FormData();
    formData.append("id", id);
    formData.append("eid", eid);
    return this.http.post(url, formData);
  }
  view_intimation_invoice(id: any): Observable<Object> {
    var url = this.website + 'view_intimation_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_intimation_invoice_id(id: any): Observable<Object> {
    var url = this.website + 'view_intimation_invoice_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  new_bulk_invoice(iname: any, date: any, caseid: any, precase: any, id: any): Observable<Object> {
    var url = this.website + 'new_bulk_invoice.php';
    var formData = new FormData();
    formData.append("iname", iname);
    formData.append("id", id);
    formData.append("date", date);
    formData.append("caseid", JSON.stringify(caseid));
    formData.append("precase", JSON.stringify(precase));
    return this.http.post(url, formData);
  }
  view_users(): Observable<Object> {
    var url = this.website + 'view_users.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  save_users(data: any): Observable<Object> {
    var url = this.website + 'save_users.php';
    var formData = new FormData();
    formData.append("data", JSON.stringify(data));
    return this.http.post(url, formData);
  }
  del_users(id: any): Observable<Object> {
    var url = this.website + 'del_users.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  save_new_user(username: any, password: any, roles: any): Observable<Object> {
    var url = this.website + 'save_new_user.php';
    var formData = new FormData();
    formData.append("username", username);
    formData.append("password", password);
    formData.append("roles", roles);
    return this.http.post(url, formData);
  }
  view_roles(): Observable<any> {
    var url = this.website + 'view_roles.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  save_paid_details(id: any, payment: any, paid_date: any): Observable<any> {
    var url = this.website + 'save_paid_details.php';
    var formData = new FormData();
    formData.append("id", id);
    formData.append("payment", payment);
    formData.append("paid_date", paid_date);
    return this.http.post(url, formData);
  }
  view_permissions(): Observable<any> {
    var url = this.website + 'view_permissions.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_permissions_id(id: any): Observable<any> {
    var url = this.website + 'view_permissions_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  save_new_permission(role_id: any, home_page: any, permissions: any): Observable<Object> {
    var url = this.website + 'save_new_permission.php';
    var formData = new FormData();
    formData.append("role_id", role_id);
    formData.append("home_page", home_page);
    formData.append("permissions", JSON.stringify(permissions));
    return this.http.post(url, formData);
  }
}