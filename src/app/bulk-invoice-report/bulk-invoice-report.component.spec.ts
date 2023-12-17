import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BulkInvoiceReportComponent } from './bulk-invoice-report.component';

describe('BulkInvoiceReportComponent', () => {
  let component: BulkInvoiceReportComponent;
  let fixture: ComponentFixture<BulkInvoiceReportComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BulkInvoiceReportComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BulkInvoiceReportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
