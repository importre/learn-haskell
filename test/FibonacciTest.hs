module Main where

import           Fibonacci
import           System.Exit
import           Test.HUnit

test0 = TestCase $ assertEqual "0 == fibonacci 0" 0 (fibonacci 0)
test1 = TestCase $ assertEqual "1 == fibonacci 1" 1 (fibonacci 1)
test2 = TestCase $ assertEqual "1 == fibonacci 2" 1 (fibonacci 2)
test3 = TestCase $ assertEqual "2 == fibonacci 3" 2 (fibonacci 3)
test4 = TestCase $ assertEqual "3 == fibonacci 4" 3 (fibonacci 4)
test5 = TestCase $ assertEqual "5 == fibonacci 5" 5 (fibonacci 5)
test10 = TestCase $ assertEqual "55 == fibonacci 10" 55 (fibonacci 10)

main = do
  results <- runTestTT $ TestList [test0, test1, test2, test10]
  if errors results + failures results == 0
  then exitSuccess
  else exitFailure
