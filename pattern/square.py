n = int(input())
for i in range(n):
    for j in range(n):
        if i or j or i==0 or j==0:
            print("*",end='')
        else:
            print(" ",end='')
    print("\n")