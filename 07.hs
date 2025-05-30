isPrime :: Int -> Int -> Bool
isPrime number index
  | number <= 2 = number == 2
  | number `mod` index == 0 = False
  | (index * index) > number  = True
  | otherwise = isPrime number (index + 1)

getNthPrime :: Int -> Int -> Int
getNthPrime number index
  | number <= 0 = (index - 1)
  | isPrime index 2 = getNthPrime (number - 1) (index + 1)
  |otherwise = getNthPrime number (index + 1)

main :: IO ()
main = print(getNthPrime 10001 2)
