<!-- README.md is generated from README.Rmd. Please edit that file -->
I built this foo package for [STAT 547](http://stat545-ubc.github.io) course practice. This practise is to fulfil the requirement of homework 08 of this course.

### Installation

``` r
devtools::install_github("AriaGuo/r-package-practise")
library(foo)
```

Here's how to use the `foo` package.There are two function contained in the package.

### First Function

The first function **string\_bind**is to bind two string characters into one string with ethier unique values (defaults) or duplicated values . Based on the unit test result, this function works on any characters but with some exception. See notation in testthat.R for detail.

``` r
library(foo)
string_bind("abc","bcde",method = "UNIQUE"")
```

### Second Function:

The second function **letter\_order** is to reorder input letter in an alphabetical order (default) or a counter-alphabetical order.Based on the unit test resutls, the function cannot handle white space, and letters with mixed capitalization very well. See examples in testthat.R

``` r
library(foo)
letter_order("A,Z,U,O",normal.sort = TRUE)
```

Here is a description of the work flow:

I wrote the two functions first with default arguments and optional arguments, inserted roxygen and used "load\_all()" to complete the "build and load" process. I ran check() to conduct a preliminary check. Then I used document() to document the function. After that, I designed the three unit test using testthat package in "devtools". I ran the test() to make sure they are correctly written and there was no errors. Then I did a final check() to make sure it pass and updated the DESCRIPTION file. Finally, this README file was written. A vignettes file was generated. I committed each step, and pulled and pushed to my public GitHub Repo [AriaGuo/r-package-practise](https://github.com/AriaGuo/r-package-practise.git) at the end.
