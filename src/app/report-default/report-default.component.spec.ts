import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ReportDefaultComponent } from './report-default.component';

describe('ReportDefaultComponent', () => {
  let component: ReportDefaultComponent;
  let fixture: ComponentFixture<ReportDefaultComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ReportDefaultComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ReportDefaultComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
