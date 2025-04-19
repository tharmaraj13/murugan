import { Document, Paragraph, TextRun, HeadingLevel, AlignmentType, Packer, UnderlineType } from 'docx';
import { QuillDeltaToHtmlConverter } from 'quill-delta-to-html';
import { saveAs } from 'file-saver';

export class DeltaToDocxConverter {
    convert(delta: any, fileName: string = 'document.docx') {
        const html = this.deltaToHtml(delta.ops);
        return this.htmlToParagraphs(html);
    }

    private htmlToParagraphs(html: string): Paragraph[] {
        const parser = new DOMParser();
        const doc = parser.parseFromString(html, 'text/html');
        const paragraphs: Paragraph[] = [];
        let currentParagraphChildren: TextRun[] = [];
        let currentText = '';
        let currentAttributes: any = {};

        const processNode = (node: ChildNode) => {
            if (node.nodeType === Node.TEXT_NODE) {
                currentText += node.textContent || '';
                return;
            }

            const element = node as HTMLElement;
            const tag = element.tagName.toLowerCase();

            // Handle line breaks first
            if (tag === 'br' || tag === 'p' || tag === 'div') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                if (currentParagraphChildren.length > 0) {
                    paragraphs.push(new Paragraph({
                        children: [...currentParagraphChildren],
                        spacing: { after: 100 }
                    }));
                    currentParagraphChildren = [];
                }
                currentText = '';
            }

            // Handle inline formatting
            if (tag === 'strong' || tag === 'b') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.bold = true;
                Array.from(element.childNodes).forEach(processNode);
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.bold = false;
            }
            else if (tag === 'em' || tag === 'i') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.italics = true;
                Array.from(element.childNodes).forEach(processNode);
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.italics = false;
            }
            else if (tag === 'u') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.underline = true;
                Array.from(element.childNodes).forEach(processNode);
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.underline = false;
            }
            else if (tag === 'a') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes.color = '0563C1';
                currentAttributes.underline = true;
                Array.from(element.childNodes).forEach(processNode);
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                currentAttributes = {};
            }
            // Add this to processNode()
            else if (tag === 'ul' || tag === 'ol') {
                const listType = tag === 'ul' ? 'bullet' : 'ordered';
                Array.from(element.children).forEach((li, index) => {
                    if (li.tagName.toLowerCase() === 'li') {
                        this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                        paragraphs.push(new Paragraph({
                            text: li.textContent || '',
                            [listType]: { level: 0 },
                            spacing: { after: 100 }
                        }));
                    }
                });
                currentText = '';
            }
            else if (tag.match(/^h[1-6]$/)) {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                const level = parseInt(tag.substring(1)) as 1 | 2 | 3 | 4 | 5 | 6;
                paragraphs.push(new Paragraph({
                    text: element.textContent || '',
                    heading: HeadingLevel[`HEADING_${level}`],
                    spacing: { before: 200, after: 100 }
                }));
                currentText = '';
            }
            else {
                Array.from(element.childNodes).forEach(processNode);
            }
        };

        // Process all nodes while maintaining proper line breaks
        Array.from(doc.body.childNodes).forEach(node => {
            if (node.nodeName === 'BR') {
                this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
                if (currentParagraphChildren.length > 0) {
                    paragraphs.push(new Paragraph({
                        children: [...currentParagraphChildren],
                        spacing: { after: 100 }
                    }));
                    currentParagraphChildren = [];
                }
                currentText = '';
            } else {
                processNode(node);
            }
        });

        // Flush any remaining content
        this.flushCurrentTextRun(currentParagraphChildren, currentText, currentAttributes);
        if (currentParagraphChildren.length > 0) {
            paragraphs.push(new Paragraph({
                children: [...currentParagraphChildren],
                spacing: { after: 100 }
            }));
        }

        return paragraphs;
    }

    private flushCurrentTextRun(children: TextRun[], text: string, attributes: any) {
        if (text.trim()) {
            children.push(new TextRun({
                text,
                bold: attributes.bold,
                italics: attributes.italics,
                underline: attributes.underline ? { type: UnderlineType.SINGLE } : undefined,
                color: attributes.color,
                size: 24 // 12pt
            }));
        }
        text = '';
    }
    private deltaToHtml(ops: any): string {
        const converter = new QuillDeltaToHtmlConverter(ops,
            // {
            //     inlineStyles: {
            //         list: (value) => ({ type: value === 'ordered' ? 'ol' : 'ul' }),
            //     },
            //     multiLineParagraph: false,
            // }
        );
        return converter.convert();
    }
}