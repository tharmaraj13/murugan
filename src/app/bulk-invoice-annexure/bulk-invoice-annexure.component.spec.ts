import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BulkInvoiceAnnexureComponent } from './bulk-invoice-annexure.component';

describe('BulkInvoiceAnnexureComponent', () => {
  let component: BulkInvoiceAnnexureComponent;
  let fixture: ComponentFixture<BulkInvoiceAnnexureComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BulkInvoiceAnnexureComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BulkInvoiceAnnexureComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
