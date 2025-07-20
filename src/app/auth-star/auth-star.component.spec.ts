import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthStarComponent } from './auth-star.component';

describe('AuthStarComponent', () => {
  let component: AuthStarComponent;
  let fixture: ComponentFixture<AuthStarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthStarComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthStarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
