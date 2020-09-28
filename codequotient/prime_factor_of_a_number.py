# Write a function primeFactors that accepts an integer parameter n (where n >=2) and print all the prime factors of n. 


def primeFactors(n):
  for i in range(2,n+1):
    for j in range(2,i):
      if (i % j) == 0:
        break
    else:
      print(i)


inp=int(input())
primeFactors(inp)