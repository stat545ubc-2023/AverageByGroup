test_that("Tests for average_by_group function", {

  # Test 1: Vector with no NAs
  df1 <- dplyr::tibble(group = c("A", "A", "B", "B"), value = c(10, 20, 30, 40))
  expect_equal(average_by_group(df1, group, value), dplyr::tibble(group = c("A", "B"), average_variable = c(15, 35)))

  # Test 2: Vector that has NAs
  df2 <- dplyr::tibble(group = c("A", "A", "B", "B"), value = c(10, NA, 30, 40))
  expect_no_error(average_by_group(df2, group, value))

  # Test 3: Vector of a different type (using a character vector for numeric_category which should cause an error)
  df3 <- dplyr::tibble(group = c(1, 2, 3, 4), value = c("A", "B", "C", "D"))
  expect_error(average_by_group(df3, group, value))

  # Test 4: Vector of length 0
  df4 <- dplyr::tibble(group = character(0), value = numeric(0))
  expect_equal(average_by_group(df4, group, value), dplyr::tibble(group = character(0), average_variable = numeric(0)))

})
