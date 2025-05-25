# htwsaar-i-mst-vorlage [![Build LaTeX document](https://github.com/systemtechniklabor/htwsaar-i-mst-vorlage/actions/workflows/build_pdf.yml/badge.svg)](https://github.com/systemtechniklabor/htwsaar-i-mst-vorlage/actions/workflows/build_pdf.yml)

A LaTeX template for theses in Computer Science and Mechatronics-Sensor Technology at HTW Saar. Also suitable for DFHI Computer Science programs (includes specialized title page).

## Getting Started

Detailed installation and configuration instructions are included in the template itself.

[The Wiki](https://github.com/systemtechniklabor/htwsaar-i-mst-vorlage/wiki) contains best practices and additional information (currently under development).

## Automated Building

### Local Development

This template includes automated build tools to streamline your workflow:

1. **Continuous build & preview** (automatically rebuilds on changes):
   ```
   ./build.sh
   ```

2. **One-time build**:
   ```
   ./build.sh once
   ```

3. **Clean auxiliary files**:
   ```
   ./build.sh clean
   ```

### GitHub Actions

The repository includes a GitHub workflow that automatically builds the PDF:
- On every push to any branch
- On a monthly schedule (2nd day of each month)

This ensures your document always compiles correctly.

## Important Notes

### Printing the Final Copy
Please print the document *double-sided* to save paper and create a more professional appearance.

### Theses in English
If you write your thesis in English, you *must* keep the following sections in German for legal reasons:
* Title page
* Declaration of Authorship (Selbständigkeitserklärung)
* Confidentiality clause (if used)

### Paragraphs and Line Breaks
Separate thoughts with paragraphs, which are represented by an `empty line` in the LaTeX source. Don't combine empty lines with `\\` or `\newline`. Ideally, avoid using `\\` or `\newline` altogether. :innocent:

## Template Structure

- `htwsaar-i-mst-vorlage.tex`: Main document that includes all components
- `htwsaar-i-mst-config.tex`: Configuration file with packages and personal data
- `Chapters/`: Your thesis content (create your chapters here)
- `FrontBackmatter/`: Title page, abstract, declaration, etc.
- `Graphics/`: Images and logos
- `Examples/`: Sample content (remove before final submission)
