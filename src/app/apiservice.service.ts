import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { CookieService } from 'ngx-cookie-service';
import CryptoJS from 'crypto-js';

@Injectable({
  providedIn: 'root'
})
export class ApiserviceService {
  // public website = "http://13.201.13.37/api/";
  // public website = "http://localhost:2000/";
  public website = "/api/";
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
  view_ibulk_invoice(id: any): Observable<Object> {
    var url = this.website + 'view_ibulk_invoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_ibulk_invoice_report(): Observable<Object> {
    var url = this.website + 'view_ibulk_invoice_report.php';
    var formData = new FormData();
    return this.http.post(url, formData);
  }
  view_ibulk_invoice_annexure(id: any): Observable<Object> {
    var url = this.website + 'view_ibulk_invoice_annexure.php';
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
  report_details(gicsid: any): Observable<Object> {
    var url = this.website + 'report_details.php';
    var formData = new FormData();
    formData.append("gicsid", gicsid);
    return this.http.post(url, formData);
  }
  report_defaults(claim_type: any): Observable<Object> {
    var url = this.website + 'report_defaults.php';
    var formData = new FormData();
    formData.append("claim_type", claim_type);
    return this.http.post(url, formData);
  }
  save_report_defaults(values: any, fields: any, keys: any, claim_type: any): Observable<Object> {
    var url = this.website + 'save_report_defaults.php';
    var formData = new FormData();
    formData.append("values", JSON.stringify(values));
    formData.append("fields", JSON.stringify(fields));
    formData.append("keys", JSON.stringify(keys));
    formData.append("claim_type", claim_type);
    return this.http.post(url, formData);
  }
  save_report_entries(values: any, fields: any, keys: any, gicsid: any): Observable<Object> {
    var url = this.website + 'save_report_entries.php';
    var formData = new FormData();
    formData.append("values", JSON.stringify(values));
    formData.append("fields", JSON.stringify(fields));
    formData.append("keys", JSON.stringify(keys));
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
  view_intimation_binvoice(id: any): Observable<Object> {
    var url = this.website + 'view_intimation_binvoice.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_intimation_binvoice_id(id: any): Observable<Object> {
    var url = this.website + 'view_intimation_binvoice_id.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  new_ibulk_invoice(iname: any, date: any, caseid: any, precase: any, id: any): Observable<Object> {
    var url = this.website + 'new_ibulk_invoice.php';
    var formData = new FormData();
    formData.append("iname", iname);
    formData.append("id", id);
    formData.append("date", date);
    formData.append("caseid", JSON.stringify(caseid));
    formData.append("precase", JSON.stringify(precase));
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
  save_paid_idetails(id: any, payment: any, paid_date: any): Observable<any> {
    var url = this.website + 'save_paid_idetails.php';
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
  add_expense_type(ename: any, id: any): Observable<Object> {
    var url = this.website + 'add_expense_type.php';
    var formData = new FormData();
    formData.append("ename", ename);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_expense_type(id: any): Observable<Object> {
    var url = this.website + 'view_expense_type.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  del_expense_type(id: any): Observable<Object> {
    var url = this.website + 'del_expense_type.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  add_expenses(staff_id: any, staff_name: any, e_date: any, e_type_id: any,
    amount: any, payment_mode: any, remarks: any, id: any): Observable<Object> {
    var url = this.website + 'add_expenses.php';
    var formData = new FormData();
    formData.append("staff_id", staff_id);
    formData.append("staff_name", staff_name);
    formData.append("e_date", e_date);
    formData.append("e_type_id", e_type_id);
    formData.append("amount", amount);
    formData.append("payment_mode", payment_mode);
    formData.append("remarks", remarks);
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_expenses(id: any): Observable<Object> {
    var url = this.website + 'view_expenses.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
  view_expenses_all(fdate: any, tdate: any): Observable<Object> {
    var url = this.website + 'view_expenses.php';
    var formData = new FormData();
    formData.append("fdate", fdate);
    formData.append("tdate", tdate);
    return this.http.post(url, formData);
  }
  del_expenses(id: any): Observable<Object> {
    var url = this.website + 'del_expenses.php';
    var formData = new FormData();
    formData.append("id", id);
    return this.http.post(url, formData);
  }
}