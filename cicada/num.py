#!/usr/bin/python3
chapter=[]
for i in range(30):
    a=input("enter string : ").replace(" ", "")
    b=int(input("enter word number : "))
    chapter.append(a[b])
    print(a[b])

c="".join(chapter)
print(c)
