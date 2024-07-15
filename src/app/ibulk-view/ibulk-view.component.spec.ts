import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IbulkViewComponent } from './ibulk-view.component';

describe('IbulkViewComponent', () => {
  let component: IbulkViewComponent;
  let fixture: ComponentFixture<IbulkViewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IbulkViewComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(IbulkViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
