for i = 1000000:1010000
  for j = 2:i
    i % j == 0 && break
    j == i - 1 && println( i )
  end
end
