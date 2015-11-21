test_that("binding two strings",{
  a <- "abcd"
  b <- "cedc"
  ab <- string_bind(a,b)
  expect_identical(ab,"abcde")
})

test_that("binding numbers",{
  a <- 1:10
  b <- 6:12
  ab <- string_bind(a,b)
  expect_that(identical(ab,"1:12"),is_false())
  ## instead of getting "1:12" as the result, I got "1627384950" which means
  ## the string_bind process is based on individual character from each string
  ## and bindig them alternatively from each input

})

test_that("binding symbols",{
  a <- ",, "
  b <- "  <"
  ab <- string_bind(a,b)
  expect_match(ab,", <")
})

test_that("letter reorder",{
  a <- "A,R,D,B"
  a_reorder <- letter_order(a)
  expect_equal(a_reorder,"A,B,D,R")
})

test_that("character missing",{
  a <- "A, , ,C"
  a_reorder <- letter_order(a)
  string_a <-stringr::str_length(a)
  string_b <-stringr::str_length(a_reorder)
  expect_that(string_a>string_b,is_true())
  ## the function result omits one space
})

test_that("mixed capitalization",{
  a <- "a,Z,e,F"
  a_reorder <- letter_order(a)
  a_expect <- "a,e,F,Z"
  expect_that(identical(a_expect,a_reorder),is_false())
  ## this function cannot deal with letters with mixed capitalization very well
})
