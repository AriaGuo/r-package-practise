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

test_that("binding letters which are duplicated",{
  a <- "apple"
  b <- "orange"
  ab <- string_bind(a,b,method = "DUPLICATE")
  expect_equal(ab,"pae")
})
