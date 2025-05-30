isPrime :: Int -> Int -> Bool
isPrime number index
  | number <= 2 = number == 2
  | number `mod` index == 0 = False
  | (index * index) > number = True
  | otherwise = isPrime number (index + 1)

sumPrimes :: Int -> Int -> Int
sumPrimes index sum
  | index >= 2000000 = sum
  | otherwise =
     if isPrime index 2
     then sumPrimes (index + 1) (sum + index)
     else sumPrimes (index + 1) sum

main :: IO ()
main = print(sumPrimes 0 0)
