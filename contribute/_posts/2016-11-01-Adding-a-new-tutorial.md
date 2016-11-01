---
layout: post
title: Adding a new tutorial
author: Louis du Plessis
---

There are four different ways (described in more detail below) to contribute a new tutorial to the website:

1. Write a new tutorial in Markdown *(preferred option)*
2. Write a new tutorial in LaTeX
3. Contribute an existing PDF tutorial (with or without the source code)
4. Contribute an existing Wiki tutorial (e.g. a tutorial on GitHub or GitLab)

Regardless of the way the tutorial is contributed, every tutorial should be uploaded to a [GitHub](http://www.github.com) repository and should be a standalone unit. That is, the GitHub repository should contain, besides the tutorial itself,

- All data files used in the tutorial
- Example BEAST2 XML files
- Example output files from running the XML files in BEAST2
- Any scripts needed for pre- or post-processing

Keep in mind that the name of the tutorial displayed on the website will be the name of the GitHub repository, with all hyphens replaced with spaces.

The easiest way to create a new tutorial is to simply clone the [tutorial template repository](https://github.com/Taming-the-BEAST/Tutorial-Template) (or any of the existing [tutorials](/tutorials/)). This will set up the correct directory structure for the tutorial. Follow these steps:

> 3. Create a new repository on your GitHub account with the name of your tutorial. Let's assume for the rest of this example that your tutorial will be called *My-Awesome-Tutorial*. Do **not** initialize the repository with a README and do not add a `.gitignore` file.
> 2. Navigate to where you want to create the tutorial.
> 1. Type `git clone git@github.com:Taming-the-BEAST/Tutorial-Template.git` <br>(**Note:** This is the template tutorial, not the tutorial you just created on your GitHub account).
> 2. Rename the directory to the new tutorial's name: `mv Tutorial-Template My-Awesome-Tutorial` (this step is optional, but keeps everything nice and tidy).
> 2. Enter the tutorial directory: `cd My-Awesome-Tutorial`
> 4. Change the origin of the repository so it points to the newly created repository on your GitHub account: `git remote set-url origin git@github.com:<your-username>/My-Awesome-Tutorial.git`
> 6. Type: `git push -u origin master`
```

Alternatively, it is also possible to create a blank repository and set up the same directory structure. The default structure of a tutorial is: 

```
	.
	├── data/
	|   └── (alignment files)
	├── xml/
	|   └── (BEAST2 XML files)
	├── precooked-runs/
	|   └── (.log and .trees files from BEAST output)
	├── scripts/
	|   └── (pre- and post-processing scripts)
	├── figures/
	|   └── (screenshots and other figures used in the tutorial)
	├── README.md
	├── biblatex_macros.tex
	├── main.tex
	└── preamble.tex

```

The three `.tex` files are optional and are used for tutorials written in LaTeX. If you want to add any further documentation or lecture slides to the tutorial, either add them to the root of the tutorial or to a directory with a descriptive name. All PDF files will be automatically detected and will be available to view and download from the website.

Tutorial metadata should be added to the yaml header of `README.md`. At the moment the only metadata that is processed by the website is the `author` field. Multiple authors should be separated by commas (no spaces)

```
---
author: Author One,Author Two,Author Three
---

The rest of the file continues here...
```

Note that all tutorials should contain licensing information. We recommend a [Creative Commons Attribution 4.0 license](https://creativecommons.org/licenses/by/4.0/). 


# Writing a new tutorial in Markdown

Markdown is a lightweight, readable markup language that can be easily converted to many different formats. Tutorials written in Markdown should be saved into the file `README.md`. If you write the tutorial in Markdown you do not need to add any LaTeX or Pdf files to the tutorial. 

In the [tutorial template repository](https://github.com/Taming-the-BEAST/Tutorial-Template) there is an example tutorial written in Markdown. More Markdown syntax is given in the [Markdown style guide](/contribute/Style). Although you should be able to preview the tutorial by looking at the repository on GitHub, some objects will not be in the correct format, because the website uses a custom style with a few extensions. The best way to preview what the tutorial will look like on the website is to [build a local copy of the site](/contribute/Building-a-local-copy-of-the-site/). 

References can be added to a Markdown tutorial using [Jekyll-scholar](/contribute/Jekyll-scholar). An example is given in the [tutorial template repository](https://github.com/Taming-the-BEAST/Tutorial-Template). 


# Writing a new tutorial in LaTeX

Tutorials written in LaTeX should be saved into `main.tex`. We would appreciate if you used `preamble.tex` and `biblatex_macros.tex` to ensure that all of our tutorials have the same style. Please do not add the compiled PDF file to the repository. We will build it ourselves.

To write the tutorial follow the style used in the [tutorial template repository](https://github.com/Taming-the-BEAST/Tutorial-Template). Please also write a small description of your tutorial in `README.md`. 



# Contributing an existing PDF tutorial

Sometimes it may be the case that you already have an existing tutorial for BEAST2 that would be difficult to convert to Markdown or LaTeX. As long as you have a Pdf file for the tutorial we can still use it! In this case just add the PDF file to the root of the GitHub project, and write a small description of the tutorial in `README.md` and you're done! (Of course you still need to add data, XML files etc.). 


# Contribute an existing Wiki tutorial

If a tutorial is already on a GitHub or GitLab Wiki it should already be written in Markdown and could be ported very easily for Taming the BEAST. Keep in mind that the Taming the BEAST website allows more flexibility for the tutorial style and allows references through [Jekyll-scholar](/contribute/Jekyll-scholar). In addition, the tutorial would be available in the same location as other BEAST2 tutorials, and bundled with all the data and XML files needed to run it.





# Submitting the finished tutorial

If you feel that the tutorial is complete and ready to be submitted contact one of the website [administrators](/team/) or simply transfer ownership of the repository to the [taming-the-beast organization](https://github.com/Taming-the-BEAST) on GitHub. 

We will then evaluate the tutorial, and if it meets our standards, add it to the website.

Before submitting please go through the [checklist](/contribute/New-tutorial-checklist)!