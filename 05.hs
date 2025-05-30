isDivisible :: Int -> Int -> Int -> Bool
isDivisible num lim curr
  | curr == lim = num `mod` lim == 0
  | num `mod` curr /= 0 = False
  | otherwise = isDivisible num lim (curr + 1)

smallestMultiple :: Int -> Int
smallestMultiple num
  | isDivisible num 20 1 = num
  | otherwise = smallestMultiple (num + 1)

main :: IO ()
main = print(smallestMultiple 10)

