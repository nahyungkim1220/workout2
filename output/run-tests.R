#================================================#
## Title: Final Master Script
## Description: Runs all functions in workout2.
## Date: November 06, 2018
## Author: Audrey Kim
## Input: Functions from workout2
## Output: Github document
#================================================#
library('testthat')
context("Master Test Script")

functions <- dir('../code/functions')
lapply(paste0('../code/functions/', functions), source)

sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()

