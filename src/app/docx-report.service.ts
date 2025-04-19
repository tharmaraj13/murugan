import { Injectable } from '@angular/core';
import { Document, Paragraph, TextRun, AlignmentType, ImageRun, Packer, HeadingLevel } from 'docx';
import {
  Table, TableRow, TableCell, WidthType, BorderStyle
} from "docx";
import { saveAs } from 'file-saver';
import { DeltaToDocxConverter } from './delta-to-docx-converter';

@Injectable({
  providedIn: 'root'
})
export class DocxReportService {

  private deltaConverter = new DeltaToDocxConverter();
  private createClaimInfoSection(data: any): Table {
    const fields = [
      ["Insured Name", data.pname],
      ["Claim Number", data.claimno],
      ["Hospital Name", `${data.hname}, ${data.hplace}`],
      ["Trigger", data.triggers],
      ["D O Intimation", data.doi],
      ["DOJ", data.doj],
      ["DOA", data.doa],
      ["DOD", data.dod || "Not yet discharged"],
    ];

    const rows = fields.map(([label, value]) => {
      return new TableRow({
        children: [
          new TableCell({
            children: [new Paragraph({
              children: [new TextRun({ text: `${label}`, bold: true, size: 22 })]
            })],
            width: { size: 40, type: WidthType.PERCENTAGE },
          }),
          new TableCell({
            children: [new Paragraph({
              children: [new TextRun({ text: value || 'N/A', size: 22 })]
            })],
            width: { size: 60, type: WidthType.PERCENTAGE },
          }),
        ]
      });
    });

    return new Table({
      width: {
        size: 100,
        type: WidthType.PERCENTAGE,
      },
      rows,
      borders: {
        top: { style: BorderStyle.SINGLE, size: 1, color: "AAAAAA" },
        bottom: { style: BorderStyle.SINGLE, size: 1, color: "AAAAAA" },
        left: { style: BorderStyle.SINGLE, size: 1, color: "AAAAAA" },
        right: { style: BorderStyle.SINGLE, size: 1, color: "AAAAAA" },
        insideHorizontal: { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" },
        insideVertical: { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" },
      },
      // spacing: { after: 400 },
    });
  }

  async generateReport(data: any) {
    try {
      // Load logo image
      const imageBuffer = await this.loadImage('assets/images/header.png');

      // Create document structure
      const doc = new Document({
        styles: {
          paragraphStyles: [
            {
              id: 'normal',
              name: 'Normal',
              run: {
                size: 24, // Half-points (24 = 12pt)
                font: 'Calibri',
              },
              paragraph: {
                spacing: { line: 276 }, // 1.15 line spacing
              },
            },
          ],
        },
        numbering: {
          config: [{
            reference: 'default-numbering',
            levels: [{
              level: 0,
              format: 'decimal',
              text: '%1.',
              alignment: AlignmentType.LEFT,
              style: { paragraph: { indent: { left: 720, hanging: 360 } } }
            }]
          }]
        },
        sections: [{
          properties: {},
          children: [
            // Header with logo
            this.createHeader(imageBuffer),

            // Report title
            new Paragraph({
              text: "Global Insurance Claim Solutions – Final Report",
              heading: HeadingLevel.TITLE,
              spacing: { after: 200 },
            }),

            // Claim Information Section
            this.createClaimInfoSection(data),

            // Findings Sections
            this.createSectionHeading("Insured / Doctor Finding"),
            // ...data.insured_findings,
            ...this.deltaConverter.convert(data.insured_findings),

            // this.createSectionHeading("Hospital Records"),
            // ...this.deltaConverter.convert(data.hospital_records),

            // this.createSectionHeading("Other Findings"),
            // ...this.deltaConverter.convert(data.other_findings),

            // this.createSectionHeading("Evidences Attached"),
            // ...this.deltaConverter.convert(data.evidences),

            // this.createSectionHeading("FINAL RECOMMENDATION", HeadingLevel.HEADING_1),
            // ...this.deltaConverter.convert(data.final_recommendation),

            // Footer
            this.createFooter(),
          ],
        }],
      });

      // Generate and save document
      const blob = await Packer.toBlob(doc);
      saveAs(blob, `Claim_Report_${data.claimno || 'unknown'}.docx`);

    } catch (error) {
      console.error('Error generating report:', error);
      throw error;
    }
  }

  // ========== Helper Methods ========== //

  private async loadImage(url: string): Promise<ArrayBuffer> {
    const response = await fetch(url);
    if (!response.ok) throw new Error(`Failed to load image: ${url}`);
    return response.arrayBuffer();
  }

  // CORRECTED IMAGE HANDLING METHOD
  private createHeader(imageBuffer: ArrayBuffer): Paragraph {
    return new Paragraph({
      children: [
        new ImageRun({
          data: imageBuffer,
          transformation: {
            width: 150,
            height: 50,
          },
          type: 'png', // or 'jpeg' based on your image
          // alt: {
          //   title: "Company Logo",
          //   description: "Header logo image"
          // },
          floating: undefined // Optional floating properties
        }),
      ],
      alignment: AlignmentType.CENTER,
      spacing: { after: 400 },
    });
  }

  private createSectionHeading(text: string, level: any = HeadingLevel.HEADING_2): Paragraph {
    return new Paragraph({
      text,
      heading: level,
      spacing: { before: 400, after: 200 },
    });
  }

  private createFooter(): Paragraph {
    return new Paragraph({
      text: "Confidential - For internal use only",
      alignment: AlignmentType.CENTER,
      spacing: { before: 600 },
      style: 'normal',
    });
  }
}