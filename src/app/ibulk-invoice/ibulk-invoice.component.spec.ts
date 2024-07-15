import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IbulkInvoiceComponent } from './ibulk-invoice.component';

describe('IbulkInvoiceComponent', () => {
  let component: IbulkInvoiceComponent;
  let fixture: ComponentFixture<IbulkInvoiceComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IbulkInvoiceComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(IbulkInvoiceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
