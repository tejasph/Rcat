# helper data for testing
test_df <- data.frame('x' = c(1, 2), 'y' = c(3, 4))
test_df_1 <- data.frame('x' = c(0.5, 2, 1), 'y' = c(100, 23, 78), 'z' = c(8, 9, 23))
df_output <- data.frame("Feature 1" = 'y', "Feature 2" = 'x', 'Correlation' = 1, check.names = FALSE)
df_output_1 <- data.frame("Feature 1" = c('y', 'z', 'z'),
                          "Feature 2" = c('x', 'y', 'x'),
                          'Correlation' = c(-0.9986, 0.1819, -0.1301),
                          check.names = FALSE)

# test incorrect dataframe type
testthat::test_that("Error is raised for incorrect df type", {
        testthat::expect_error(topcorr(1))
})

# test incorrect k type
testthat::test_that("Error is raised for incorrect k type", {
        testthat::expect_error(topcorr(test_df, "d"))
})

# test when k is larger than number of feature pairs
testthat::test_that("Error is raised for k larger than number of feature pairs", {
        testthat::expect_error(topcorr(test_df, 3))
})

# test when k is a negative number
testthat::test_that("Error is raised for negative k value", {
        testthat::expect_error(topcorr(test_df, -1))
})

# test when k is zero
testthat::test_that("Error is raised for k is zero", {
        testthat::expect_error(topcorr(test_df, 0))
})

# test when k is default
testthat::test_that("Check if the output is correct when k is not default", {
        test_input_1 <- droplevels.data.frame(topcorr(test_df_1))
        attributes(test_input_1)$na.action <- NULL
        testthat::expect_equal(test_input_1, as.data.frame(df_output_1))
})

# test when k is not default
testthat::test_that("Check if the output is correct when k is not default", {
        test_input <- droplevels.data.frame(topcorr(test_df, 1))
        attributes(test_input)$na.action <- NULL
        testthat::expect_equal(test_input, as.data.frame(df_output))
})
