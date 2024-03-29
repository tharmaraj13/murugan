import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthTata1Component } from './auth-tata1.component';

describe('AuthTata1Component', () => {
  let component: AuthTata1Component;
  let fixture: ComponentFixture<AuthTata1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthTata1Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthTata1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
