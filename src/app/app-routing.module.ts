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
import { UsersPageComponent } from './users-page/users-page.component';
import { PermissionsPageComponent } from './permissions-page/permissions-page.component';
import { AuthCholaComponent } from './auth-chola/auth-chola.component';
import { AuthRelianceComponent } from './auth-reliance/auth-reliance.component';
import { AuthGuardGuard } from './auth-guard.guard';
import { UnauthorizedComponent } from './unauthorized/unauthorized.component';
import { AuthTata1Component } from './auth-tata1/auth-tata1.component';
import { AddExpenseTypeComponent } from './add-expense-type/add-expense-type.component';
import { ViewExpenseTypeComponent } from './view-expense-type/view-expense-type.component';
import { ViewExpensesComponent } from './view-expenses/view-expenses.component';
import { AddExpensesComponent } from './add-expenses/add-expenses.component';
import { IbulkInvoiceComponent } from './ibulk-invoice/ibulk-invoice.component';
import { IbulkInvoiceReportComponent } from './ibulk-invoice-report/ibulk-invoice-report.component';
import { IbulkViewComponent } from './ibulk-view/ibulk-view.component';
import { IbulkInvoiceAnnexureComponent } from './ibulk-invoice-annexure/ibulk-invoice-annexure.component';

const routes: Routes = [
  // {path:'',component:SalesReportComponent},
  { path: '', component: LoginComponent, canActivate: [AuthGuardGuard] },
  { path: 'login', component: LoginComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-intimation/:id', component: AddProductsComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-intimation', component: AddProductsComponent, canActivate: [AuthGuardGuard] },
  { path: 'mis-report', component: SalesReportComponent, canActivate: [AuthGuardGuard], data: { allData: true } },
  { path: 'intimation-report', component: SalesReportComponent, canActivate: [AuthGuardGuard], data: { allData: false } },
  { path: 'auth-letters', component: AuthLettersComponent, canActivate: [AuthGuardGuard] },
  { path: 'aditya-letter/:id/:eid', component: AuthorizationComponent, canActivate: [AuthGuardGuard] },
  { path: 'tata-letter/:id/:eid', component: AuthTataComponent, canActivate: [AuthGuardGuard] },
  { path: 'tata-letter/:id/:eid/:taj', component: AuthTata1Component, canActivate: [AuthGuardGuard] },
  { path: 'chola-letter/:id/:eid', component: AuthCholaComponent, canActivate: [AuthGuardGuard] },
  { path: 'reliance-letter/:id/:eid', component: AuthRelianceComponent, canActivate: [AuthGuardGuard] },
  { path: 'gics-letter/:id/:eid', component: AuthGicsComponent, canActivate: [AuthGuardGuard] },
  { path: 'view/:id', component: TestingComponent, canActivate: [AuthGuardGuard] },
  { path: 'invoice/:id', component: InvoiceComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-insurance', component: AddInsuranceComponent, canActivate: [AuthGuardGuard] },

  { path: 'add-binvoice', component: IbulkInvoiceComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-binvoice/:id', component: IbulkInvoiceComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-binvoice', component: IbulkInvoiceReportComponent, canActivate: [AuthGuardGuard] },
  { path: 'ibulk-invoice/:id', component: IbulkViewComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-bannexure/:id', component: IbulkInvoiceAnnexureComponent, canActivate: [AuthGuardGuard] },

  { path: 'add-invoice', component: BulkInvoiceComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-invoice/:id', component: BulkInvoiceComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-invoice', component: BulkInvoiceReportComponent, canActivate: [AuthGuardGuard] },
  { path: 'bulk-invoice/:id', component: BulkViewComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-annexure/:id', component: BulkInvoiceAnnexureComponent, canActivate: [AuthGuardGuard] },

  { path: 'add-insurance/:id', component: AddInsuranceComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-hospital', component: AddHospitalComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-hospital/:id', component: AddHospitalComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-vendor', component: AddVendorComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-vendor/:id', component: AddVendorComponent, canActivate: [AuthGuardGuard] },
  { path: 'company', component: CompanyComponent, canActivate: [AuthGuardGuard] },
  { path: 'hospitals', component: ViewHospitalComponent, canActivate: [AuthGuardGuard] },
  { path: 'vendors', component: ViewVendorComponent, canActivate: [AuthGuardGuard] },
  { path: 'insurance', component: ViewInsuranceComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-staff', component: AddStaffComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-staff/:id', component: AddStaffComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-staff', component: ViewStaffComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-users', component: UsersPageComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-permissions', component: PermissionsPageComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-card/:id', component: ViewCardComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-expense-type', component: AddExpenseTypeComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-expense-type/:id', component: AddExpenseTypeComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-expense-type', component: ViewExpenseTypeComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-expenses', component: AddExpensesComponent, canActivate: [AuthGuardGuard] },
  { path: 'add-expenses/:id', component: AddExpensesComponent, canActivate: [AuthGuardGuard] },
  { path: 'view-expenses', component: ViewExpensesComponent, canActivate: [AuthGuardGuard] },
  { path: '404-page', component: UnauthorizedComponent },
  { path: '**', component: UnauthorizedComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
