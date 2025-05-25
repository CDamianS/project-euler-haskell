fibonacci = (prev, curr, total) ->
  sum = prev+curr
  if sum < 4000000
    if sum % 2 == 0
      fibonacci curr, sum, total+sum
    else
      fibonacci curr, sum, total
  else
    return total

print(fibonacci 0, 1, 0)
