N = int(input())
if N>1:
  for i in range(2,N+1):
    for j in range(2,i):
      if (i % j) == 0:
        break
    else:
      print(i)