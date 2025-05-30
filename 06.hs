numbers :: [Int]
numbers = [1..100]

sumOfSquares :: Int
sumOfSquares = foldr (+) 0 (map (\x -> (x*x)) numbers)

squareOfSum :: Int
squareOfSum = let sum = foldr (+) 0 numbers in (sum * sum)

main :: IO ()
main = print (squareOfSum - sumOfSquares)
