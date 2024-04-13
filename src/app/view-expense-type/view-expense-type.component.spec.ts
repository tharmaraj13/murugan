import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewExpenseTypeComponent } from './view-expense-type.component';

describe('ViewExpenseTypeComponent', () => {
  let component: ViewExpenseTypeComponent;
  let fixture: ComponentFixture<ViewExpenseTypeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewExpenseTypeComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewExpenseTypeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
