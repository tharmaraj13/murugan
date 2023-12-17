import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthGicsComponent } from './auth-gics.component';

describe('AuthGicsComponent', () => {
  let component: AuthGicsComponent;
  let fixture: ComponentFixture<AuthGicsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthGicsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthGicsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
