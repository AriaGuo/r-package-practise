test_that("letter reorder",{
  a <- "A,R,D,B"
  a_reorder <- letter_order(a)
  expect_equal(a_reorder,"A,B,D,R")
})

test_that("character missing",{
  a <- "A, , ,C"
  a_reorder <- letter_order(a)
  expect_that(identical(a,a_reorder),is_false())
  ## the function result omits one space
})

test_that("mixed capitalization",{
  a <- "a,Z,e,F"
  a_reorder <- letter_order(a)
  a_expect <- "a,e,F,Z"
  expect_that(identical(a_expect,a_reorder),is_false())
  ## this function cannot deal with letters with mixed capitalization very well
})

test_that("sorting backward",{
  a <- "a,u,p,b"
  a_reorder <- letter_order(a,normal.sort = FALSE)
  a_expect <- "u,p,b,a"
  expect_identical(a_expect,a_reorder)
})

test_that("sorting backward",{
  a <- "a,u,p,b"
  expect_warning(letter_order(a,normal.sort = "normal"),"'normal' is not a valid sorting method")
})
