def collatz(num)
  a = []
  while (num > 1)
    a << num
    (num%2 == 0) ? num = (num/2) : num = (3*num + 1)
  end
  a << 1
  return a.length
end

top = [0]

for i in 1..1000000
  printf("\rCalculating %s... The leader is %d", i, top.last)
  if collatz(i) > top.first
    top = [collatz(i), i]
  end
  top
end

printf("\r\033[KComplete.")
print "\n--\nThe winner is #{top.last} with a sequence length of #{top.first}"
