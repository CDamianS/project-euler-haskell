fibonacci :: Int -> Int -> Int -> Int
fibonacci prev curr total
  | (prev + curr) < 4000000 =
      let next = prev + curr
      in if next `mod` 2 == 0
         then fibonacci curr next (total + next)
         else fibonacci curr next total
   | otherwise = total
   
main :: IO ()
main = print (fibonacci 0 1 0)
