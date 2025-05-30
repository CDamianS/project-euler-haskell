searchTripletProduct :: Int -> Int -> Int
searchTripletProduct a b
  | a >= 1000 = 0
  | b >= (500 - a `div` 2) = searchTripletProduct (a + 1) (a + 2)
  | otherwise =
      let c = 1000 - a - b
       in if a * a + b * b == c * c
            then a * b * c
            else searchTripletProduct a (b + 1)

main :: IO ()
main = print (searchTripletProduct 1 2)
