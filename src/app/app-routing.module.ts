import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AddProductsComponent } from './add-products/add-products.component';
import { LoginComponent } from './login/login.component';
import { SalesReportComponent } from './sales-report/sales-report.component';

import { TestingComponent } from './testing/testing.component';
import { AddInsuranceComponent } from './add-insurance/add-insurance.component';
import { AddHospitalComponent } from './add-hospital/add-hospital.component';
import { AddVendorComponent } from './add-vendor/add-vendor.component';
import { ViewHospitalComponent } from './view-hospital/view-hospital.component';
import { ViewVendorComponent } from './view-vendor/view-vendor.component';
import { ViewInsuranceComponent } from './view-insurance/view-insurance.component';
import { InvoiceComponent } from './invoice/invoice.component';
import { CompanyComponent } from './company/company.component';
import { ViewCardComponent } from './view-card/view-card.component';
import { ViewStaffComponent } from './view-staff/view-staff.component';
import { AddStaffComponent } from './add-staff/add-staff.component';
import { AuthLettersComponent } from './auth-letters/auth-letters.component';
import { AuthorizationComponent } from './authorization/authorization.component';
import { AuthTataComponent } from './auth-tata/auth-tata.component';
import { AuthGicsComponent } from './auth-gics/auth-gics.component';
import { BulkInvoiceComponent } from './bulk-invoice/bulk-invoice.component';
import { BulkViewComponent } from './bulk-view/bulk-view.component';
import { BulkInvoiceReportComponent } from './bulk-invoice-report/bulk-invoice-report.component';
import { BulkInvoiceAnnexureComponent } from './bulk-invoice-annexure/bulk-invoice-annexure.component';

const routes: Routes = [
  // {path:'',component:SalesReportComponent},
  {path:'',component:LoginComponent},
  {path:'login',component:LoginComponent},
  {path:'add-intimation/:id',component:AddProductsComponent},
  {path:'add-intimation',component:AddProductsComponent},
  {path:'intimation-report',component:SalesReportComponent},
  {path:'auth-letters',component:AuthLettersComponent},
  {path:'aditya-letter/:id/:eid',component:AuthorizationComponent},
  {path:'tata-letter/:id/:eid',component:AuthTataComponent},
  {path:'gics-letter/:id/:eid',component:AuthGicsComponent},
  {path:'view/:id',component:TestingComponent},
  {path:'invoice/:id',component:InvoiceComponent},
  {path:'bulk-invoice/:id',component:BulkViewComponent},
  {path:'view-annexure/:id',component:BulkInvoiceAnnexureComponent},
  {path:'view-invoice',component:BulkInvoiceReportComponent},
  {path:'add-insurance',component:AddInsuranceComponent},
  {path:'add-invoice',component:BulkInvoiceComponent},
  {path:'add-insurance/:id',component:AddInsuranceComponent},
  {path:'add-hospital',component:AddHospitalComponent},
  {path:'add-hospital/:id',component:AddHospitalComponent},
  {path:'add-vendor',component:AddVendorComponent},
  {path:'add-vendor/:id',component:AddVendorComponent},
  {path:'company',component:CompanyComponent},
  {path:'hospitals',component:ViewHospitalComponent},
  {path:'vendors',component:ViewVendorComponent},
  {path:'insurance',component:ViewInsuranceComponent},
  {path:'add-staff',component:AddStaffComponent},
  {path:'add-staff/:id',component:AddStaffComponent},
  {path:'view-staff',component:ViewStaffComponent},
  {path:'view-card/:id',component:ViewCardComponent},
  {path:'**',component:SalesReportComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
