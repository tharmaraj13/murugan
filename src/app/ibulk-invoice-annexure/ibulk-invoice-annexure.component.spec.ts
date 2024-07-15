import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IbulkInvoiceAnnexureComponent } from './ibulk-invoice-annexure.component';

describe('IbulkInvoiceAnnexureComponent', () => {
  let component: IbulkInvoiceAnnexureComponent;
  let fixture: ComponentFixture<IbulkInvoiceAnnexureComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IbulkInvoiceAnnexureComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(IbulkInvoiceAnnexureComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
