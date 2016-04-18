for i in range(1000000, 1010001):
  for j in range(2, i):
    if i % j == 0:
      break
    if j == i - 1:
      print(i)
