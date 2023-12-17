import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthLettersComponent } from './auth-letters.component';

describe('AuthLettersComponent', () => {
  let component: AuthLettersComponent;
  let fixture: ComponentFixture<AuthLettersComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthLettersComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthLettersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
