import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IbulkInvoiceReportComponent } from './ibulk-invoice-report.component';

describe('IbulkInvoiceReportComponent', () => {
  let component: IbulkInvoiceReportComponent;
  let fixture: ComponentFixture<IbulkInvoiceReportComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IbulkInvoiceReportComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(IbulkInvoiceReportComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
