import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthTataComponent } from './auth-tata.component';

describe('AuthTataComponent', () => {
  let component: AuthTataComponent;
  let fixture: ComponentFixture<AuthTataComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthTataComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthTataComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
