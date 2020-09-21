n = int(input())
dictionary = {}
numbers = list(map(int, input().split()))
numbers.sort()
total = 0
#create dictionary with numbers:frequency
for num in numbers:
    if num not in dictionary:
        dictionary[num] = 1
    else:
        dictionary[num] = dictionary[num] + 1
#find total and mean
for key, value in dictionary.items():
    total = total + (key*value)
mean = total/n
#find median
if n%2 == 0:
    median = (numbers[int(n/2)-1] + numbers[int(n/2)])/2
else:
    median = numbers[int((n+1)/2)]
#find mode
freq = 0
mode = 0
for key in dictionary.keys():
    if dictionary[key] >= freq:
        if dictionary[key] == freq:
            if int(key) < mode:
                mode = key
                freq = dictionary[key]
        else:
            mode = key
            freq = dictionary[key]


print (mean)
print (median)
print (mode)