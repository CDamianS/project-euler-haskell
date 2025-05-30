largestPrime :: Int -> Int -> Int
largestPrime number dividend
  | number /= 1 =
  if number `mod` dividend == 0
  then largestPrime (number `div` dividend) dividend
    else largestPrime number (dividend + 1)
   | otherwise = dividend

main :: IO ()
main = print (largestPrime 600851475143 2)
