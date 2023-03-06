[![PDFLaTeX Build](https://github.com/zalsaeed/qu-thesis-template/actions/workflows/latex-build.yml/badge.svg)](https://github.com/zalsaeed/qu-thesis-template/actions/workflows/latex-build.yml)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/zalsaeed/qu-thesis-template)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/zalsaeed/qu-thesis-template)

# Qassim University Thesis Template

This is the thesis repository for the graduation project template at Qassim University. All 498 students should use this template for consistency. Currently, there are no guidelines on the changes allowed for the document theme. However, we recommend keeping it as it is (especially the configurations that help us read and comment on the report, such as the double-spaced lines).

## Files Structure

- Any file starts with a digit (e.g., `00-<name>.tex`) is one of the main document files (either the main one or one of the chapters).
- The directory [figures](figures) is where all the figures used in the document should be placed. Students are free on how the content of the figures directory is organized. 
- The file [ref.bib](ref.bib) is where all the references for the project are saved and organized.
- The file [Makefile](Makefile) is a helper file to typeset the document in a clean way (tested on MacOS and Linux only).

## Typeset Instruction

The given template has no special configurations required. Nevertheless, this section aims to help you figure out "what you need" and "what you should do" to typeset (build) this template.

### Prerequisites:

Whether you are using Windows, macOS, or Linux, you MUST have pdflatex installed. To obtain the latest pdflatex version (and more), here are some links to the widely used tex distribution for each operating system (note: you are free to use any other distribution as long as it provides pdflatex):
- Windows: MikTex (https://miktex.org/download)
- macOS: MacTex (https://tug.org/mactex/)
- Linux: Simply run `apt-get update & apt-get install texlive-full`.

Please note these are not latex editors. These are latex distributions (engines/compiler). Some of the distribution might come with a standard editor, but it is your responsibility to find one that is good for your work. 

### Build with MacOS or Linux

Assuming you installed pdflatex correctly and have all the required packages, all you need is to run the following command from the root of this project (i.e., here):

```bash
make clean all
````

The build output will be stored in a new directory named `build`. Never add the output directory to this repository. The script given is a simplification of the build process. Using the tags `clean` and `all` will typeset the document many times (to ensure all required aux files are built before generating the last version). If you are not making changes to sections (e.g., adding a new section) or introducing new references, then using `make` alone is good enough and faster.

### Build with Windows

Using your editor of choice,
1. Open the file `00-main.tex`. 
2. Make sure the typesetting engine is `PDFLaTeX` (usually it is setup by default).
3. Run the typesetter. 
4. Check for the PDF file generated in the same directory

### A Copy on Overleaf

Consult you supervisor for having a copy on Overleaf. 

## List of IDEs

What to use to edit the latex document is up to you. Any suggestion we make here is an opinionated suggestion from our accumulative experiences. Thus, editors are not limited to the list below, but it is an attempt to help you set up everything faster.

### LaTeX Editors

- [TexShop](https://pages.uoregon.edu/koch/texshop/) [macOS]: This is the default editor that comes with MacTex distribution.
- [TextPad](https://www.textpad.com/home) [Windows]: This a light weight latex editor for Windows and is usually shipped with most latex distributions.
- [Vim](https://www.vim.org/) [Linux, macOS]: Yes, vim! Simple is always good.
- [TexMaker](https://www.xm1math.net/texmaker/) [Linux, macOS, Windows]: Cross-platform editor. There are other such cross-platform editors, but this one is light weight while having all the essential features you might be looking for.
- [Sublime](https://www.sublimetext.com/) [macOS]: Again, simple is good. This is for those who don't want to use vim but still want a simple editor.
- [notepad++](https://notepad-plus-plus.org/) [Windows]: Another lightweight editor example.

### Bibliography (.bib) Editors

- [JabRef](https://www.jabref.org/) [Linux, macOS, Windows]: cross-platforms bibliography management applications. Light weight and has the essential functionalities (e.g., import references from the web, classify the papers with reading status or importance, and tracking your review in comment section for each paper).
- [BibDesk](https://bibdesk.sourceforge.io/) [macOS]: A lightweight bib management application for mac just like JabRef.
- [Mendeley](https://www.mendeley.com/) [Linux, macOS, Windows]: Mendeley might look appealing, but really recommend that you do NOT use it. In addition to been heavy, it usually updates your references automatically trying to help, but in fact it just confuses you.

## New to LaTeX?

If you are new to LaTeX, then there might be a learning curve that you will go through (which is normal).
To help you mitigate the time it could take you to be comfortable with LaTeX, here we provide some useful resources for beginners:
- [A LaTeX Cheatsheet](https://wch.github.io/latexsheet/latexsheet.pdf): This is a two-page document that should help you find most of the basic keywords you need at a glance.
- [StackExchange Tex Forum](https://tex.stackexchange.com/): This is a useful resource to search for specific tasks you want to do and have few answers. The forum can be the only resource you need if you know how to use it.

# Revision History

| Name          | Date          | Change Applied  |
| ------------- |:--------------|:----------------|
| Nada Alruhaily| NA            | Established the template with all the essential sections and cover pages  |
| Ziyad Alsaeed | Sep 9, 2022   | <ul><li>Added all the files we should ignore to .gitignore</li><li>Reorganized the files structure to have the main files in the root and others (e.g., figures) have their own directories. The new structure is better as it will make the document compatible with all different OSs or online editors.</li><li>Fixed all the references in the main files to adhere to the new structure.</li><li>Introduced a Makefile for Unix based OSs. The make file provides a cleaner build, and faster repetition.</li><li>Changed the spacing in the document to be double-spaced. This is a common setup to use with reports. Also, it is easier on the eyes of professors as well as it allows space for annotations.</li></ul> |
| Ziyad Alsaeed | Sep 11, 2022  | <ul><li>Removed the Arabic handling packages (e.g., `fontspec` and `bidi`) and substituted them with a pre-defined PDF header. This method will save us from the headache of dealing with the left-to-right and right-to-left text as well as it grantees the resolution of the header will be sustained.</li><li>Updated the build script (Makefile) to use `pdflatex` instead of `xelatex`. This is only possible after making the fix above. The goal is to make it easier to typeset the document across different platforms. If a group chooses to introduce some Arabic text, it is their responsibility to make the necessary changes.</li><li>Introduced this README file to explain all the essential elements of using this template and keep track of major changes.</li></ul> |
| Ziyad Alsaeed | Mar 4, 2023   | <ul><li>Outlined all the chapters instead of having a filling text. The hope is that the outline will give students a starting point to work with. And it will unify the outcome of the projects as much as possible.</li><li>Wrote a comprehensible LaTeX tutorial chapter. The tutorial does not cover every possible question a student might ask (it does not even attempt to), but it provides essential elements that the student might need to start with LaTeX. Also, it includes sample code to avoid common issues we have seen</li><li>Used actual references to give examples of the citation section.</li></ul> |

