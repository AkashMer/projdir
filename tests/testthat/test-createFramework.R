test_that("creation works", {
  expect_equal(createFramework(returnList = TRUE),
               c("R", "data", "results", "test-createFramework.R"))
})
