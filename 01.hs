isMultiple :: Int -> Bool
isMultiple num = num `mod` 5 == 0  || num `mod` 3 == 0

sumMultiples :: Int -> Int -> Int -> Int
sumMultiples current limit sum
  | current < limit =
  if isMultiple current
    then sumMultiples (current + 1) limit (current + sum)
    else sumMultiples (current + 1) limit sum
   | otherwise = sum
  
