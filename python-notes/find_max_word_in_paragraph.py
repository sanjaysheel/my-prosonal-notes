s = "Online Python compiler (interpreter) to run Python online. Write Python 3 code in this online editor and run it."
# s1 = s.split()
# s2 = []
# s3 = {}
# for i in s1:
#     k = s1.count(i)
#     s2.append(k)
#     s3[k]=i
# max_value = max(s2)
# print("word: ",s3[max_value]," and times: ",max_value)



# s="i am ajay and i am persuing bechlor of engineering"
s1=s.split()
for i in range(len(s1)):
	for j in range(i+1,len(s1)):
		if s1[i]==s1[j]:
			print("Repeated words : ",s1[j])
			count=0
			for k in s1[j]:
				count+=1
			print(count)