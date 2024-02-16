import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthRelianceComponent } from './auth-reliance.component';

describe('AuthRelianceComponent', () => {
  let component: AuthRelianceComponent;
  let fixture: ComponentFixture<AuthRelianceComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthRelianceComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthRelianceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
