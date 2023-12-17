import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';

import { AddProductsComponent } from './add-products/add-products.component';
import { HeaderComponent } from './header/header.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { FooterComponent } from './footer/footer.component';

import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { SalesReportComponent } from './sales-report/sales-report.component';

import { TestingComponent } from './testing/testing.component';
import { AddVendorComponent } from './add-vendor/add-vendor.component';
import { AddInsuranceComponent } from './add-insurance/add-insurance.component';
import { AddHospitalComponent } from './add-hospital/add-hospital.component';
import { ViewHospitalComponent } from './view-hospital/view-hospital.component';
import { ViewVendorComponent } from './view-vendor/view-vendor.component';
import { ViewInsuranceComponent } from './view-insurance/view-insurance.component';
import { InvoiceComponent } from './invoice/invoice.component';
import { CompanyComponent } from './company/company.component';
import { DataTablesModule } from 'angular-datatables';
import { ViewCardComponent } from './view-card/view-card.component';
import { AddStaffComponent } from './add-staff/add-staff.component';
import { ViewStaffComponent } from './view-staff/view-staff.component';
import { AuthLettersComponent } from './auth-letters/auth-letters.component';
import { AuthorizationComponent } from './authorization/authorization.component';
import { AuthTataComponent } from './auth-tata/auth-tata.component';
import { AuthGicsComponent } from './auth-gics/auth-gics.component';
import { BulkInvoiceComponent } from './bulk-invoice/bulk-invoice.component';
import { BulkViewComponent } from './bulk-view/bulk-view.component';
import { BulkInvoiceReportComponent } from './bulk-invoice-report/bulk-invoice-report.component';
import { BulkInvoiceAnnexureComponent } from './bulk-invoice-annexure/bulk-invoice-annexure.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    AddProductsComponent,
    HeaderComponent,
    SidebarComponent,
    FooterComponent,
    SalesReportComponent,
    TestingComponent,
    AddVendorComponent,
    AddInsuranceComponent,
    AddHospitalComponent,
    ViewHospitalComponent,
    ViewVendorComponent,
    ViewInsuranceComponent,
    InvoiceComponent,
    CompanyComponent,
    ViewCardComponent,
    AddStaffComponent,
    ViewStaffComponent,
    AuthLettersComponent,
    AuthorizationComponent,
    AuthTataComponent,
    AuthGicsComponent,
    BulkInvoiceComponent,
    BulkViewComponent,
    BulkInvoiceReportComponent,
    BulkInvoiceAnnexureComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    DataTablesModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
