largestPrime = (num, div) ->
  if num != 1
    if num % div == 0
      largestPrime num/div, div
    else
      largestPrime num, div+1
  else
    return div

print(largestPrime(600851475143, 2))
