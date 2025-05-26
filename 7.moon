isPrime = (n, i) ->
  return n == 2 if n <=2 
  return false if n % i == 0 
  return true if (i * i > n)
  isPrime n, i+1

getNthPrime = (number, index) ->
  return index-1 if number <= 0
  if isPrime(index, 2)
    getNthPrime number-1, index+1
  else
    getNthPrime number, index+1

print getNthPrime(10001,2)
