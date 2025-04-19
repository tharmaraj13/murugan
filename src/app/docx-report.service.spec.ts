import { TestBed } from '@angular/core/testing';

import { DocxReportService } from './docx-report.service';

describe('DocxReportService', () => {
  let service: DocxReportService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DocxReportService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
