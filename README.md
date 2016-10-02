# README #

A LaTeX template for a thesis or progress report. The Introduction chapter contains some examples of basic LaTeX commands. You should read through the instructions below as well as the examples and comments in the actual document to get started.

*Note that there are many ways of writing and compiling this document. The instructions below are just a quick guide for one method.*

## Installation & Setup ##

### Required Software ###

You will need a LaTeX compiler and a text editor. While you can use any, the following are recommended:

* MiKTeX: http://miktex.org/download
* TeXstudio: http://texstudio.sourceforge.net/

I'd recommend installing MiKTeX first, and installing it for "All Users". If you do this then TexStudio seems to grab any references it needs on install, and you have far fewer annoying permissions errors.

### Downloading Template ###
I highly recommend using Git or SVN as a version control system to save large documents. This way you not only have a reliable backup but also a record of what you've changed over time and the ability to "undelete" things.

**Option A: Creating as a Git repository**

1. Create a Bitbucket account and login
2. Fork this repository using the button on the left. This will create a copy of this repository in your own account.
3. Install Git on your machine. For windows I recommend the Github installer as it provides a nice shell: https://windows.github.com/
3. Clone your repository to your computer: Open "Git Shell" or an alternate program, navigate to the folder you would like to place the repository in, and then copy the line provided under the "Clone" button on the left of your new repository page into the terminal.

If you're not familiar with Git then there are some good resources [here](https://www.atlassian.com/git/tutorial) and [here](https://confluence.atlassian.com/display/BITBUCKET/Bitbucket+101)

If you want to sync between computers then you are OK to save a git repository to Dropbox and it'll magically work. OneDrive and Google Drive don't seem so magical. Or you can always just commit and push your changes every time you finish work (and pull before you start).

**Option B: Manual download**

There is a Downloads link on the left of this page. Select Download Repository to get a zip file of the entire template.

### Set up TeXstudio ###

You should now be able to open TeXstudio and view the files using File -> Open and selecting the ThesisTemplate.tex file.

Under the Structure window on the left, right click on ThesisTemplate.tex and select "Set this document as master document".

It's also handy to go Options -> Automatically Restore Session at Next Start.

**General Layout**

 * ThesisTemplate.tex is your main file. It controls the overall structure of the document.
 * The *include/* folder contains formatting, symbols and custom commands
 * The *header/* folder contains *frontpage.tex* which generates all the pages before your first chapter. *abstract.tex* is split out for convenience.
 * The main chapters are in separate files in *body/*. If you need to add a chapter copy one of these and then add a \include{body/myfilename} line to ThesisTemplate.tex
 * This template pulls a bibtex file from *../Bibtex/library.bib*. You can change this by editing the line "\bibliography{../Bibtex/library}" in *ThesisTemplate.tex*, or create a folder called Bibtex next to the folder containing *ThesisTemplate.tex* and ask your reference manager to output a bibtex file as library.bib here.

## Other Tips ##
I've included the LaTeX font Computer Modern Serif on the [downloads page](https://bitbucket.org/ian-craig/unsw-thesis-template/downloads) so that you can easily create figures etc with a nicely matching font. 

There's also an Australian Dictionary file if you want spellcheck in Australian English, though I've switched back to using British English anyway.