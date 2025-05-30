import Data.List (nub)

isPalindrome :: Int -> Int
isPalindrome num =
  let str = show num
  in if str == reverse str then num else 0

getProducts :: [Int]

getProducts = nub [isPalindrome (x * y) | x <- [100..999], y <- [100..999], isPalindrome (x * y) /= 0]

maxPalindrome :: Int
maxPalindrome = maximum getProducts

main :: IO ()
main = print maxPalindrome
