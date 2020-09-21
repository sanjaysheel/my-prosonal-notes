# Enter your code here. Read input from STDIN. Print output to STDOUT# Enter your code here. Read input from STDIN. Print output to STDOUT
n =  eval(input())
inp = list(map(int, input().split()))
inp.sort()
s=0
median = 0
s1=set(inp)
d={}

for i in inp:
    s+=i
    if n%2==0:
        median = inp[(n//2)]/2
    else:
        median = ((inp[(n//2)]+inp[((n//2)+1)])/2)

for i in s1: 
    k = inp.count(i) 
    d[i]= k
            
mean = s/n

a=min(inp)
print(mean)
print(median)
print(d)



