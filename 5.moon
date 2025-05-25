isDivisible = (num, lim, curr) ->
  return num % lim == 0 if lim == curr
  if num % curr == 0
    return isDivisible num, lim, curr+1
  else
    return False

smallestMultiple = (num) ->
  if isDivisible num, 20, 1
    return num
  else
    return smallestMultiple num+1

print(smallestMultiple 10)
