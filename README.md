<!-- README.md is generated from README.Rmd. Please edit that file -->
This is a practice package for [STAT 547](http://stat545-ubc.github.io).

This is a demo to fulfil the requirement of homework 08 of the course

Here's how to use the `foo` package.There are two function contained in the package.

The first function **string\_bind**is to bind two string characters into one string with only unique values. Based on the test unit result, this function works on any characters. See notation in testthat.R for detail.

``` r
library(foo)
string_bind("abc","bcde")
```

The second function **letter\_order** is to reorder input letter in an alphabetical order.Based on the test unit resutls, the function cannot handle white space, and letters with mixed capitalization very well. See examples in testthat.R

``` r
library(foo)
letter_order("A,Z,U,O")
```

Here is a description of the work flow:

I wrote the two functions first, inserted roxygen and used "load\_all()" to load complete the "build and load" process. I ran check() to conduct a preliminary check. Then I used document() to documented the function. After that, I designed the three test unit using testthat package in "devtools". I run the test() to make sure they are correctly written and there was no errors. Then I did a final check() to make sure it pass and updated the DESCRIPTION file. Finally, this README file was written. A vignettes file was generated, but I didn't have figures or plots so I didn't use it. I committed, pulled and pushed to a public GitHub Repo at the end.
