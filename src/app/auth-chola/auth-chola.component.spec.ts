import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthCholaComponent } from './auth-chola.component';

describe('AuthCholaComponent', () => {
  let component: AuthCholaComponent;
  let fixture: ComponentFixture<AuthCholaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AuthCholaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AuthCholaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
