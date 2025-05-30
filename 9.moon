search = (a, b) ->
  return 0 if a >= 1000
  return search a+1, a+2 if b >= 1000 - a / 2 -- Insanely genius recursion and limit by Martin Ueding
  c = 1000 - a - b
  if a*a + b*b == c*c
    return a*b*c
  else
    return search a, b+1
    

main = ->
  print(search 1,2)

main!
