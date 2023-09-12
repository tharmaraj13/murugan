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
    CompanyComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
