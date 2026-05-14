#1. sum of two numbers 

a=int(input("enter 1st number : "))
b=int(input("enter 2nd number : "))
c=a+b
print("the sum of two numbers is : ",c)

 

#2. Odd or even checker 

num=int(input("enter a number : "))
if num%2==0:
    print("the number is even")
else:
    print("the number is odd")

    

#3. Factorial calculation

num=int(input("enter a number : "))
factorial=1
for i in range(1,num+1):
    factorial=factorial*i
print("the factorial of the number is : ",factorial)



#4. Fibonacci sequence 

n=int(input("enter the number of terms : "))
a=0
b=1
print("the fibonacci sequence is : ")
for i in range(n):
    print(a,end=" ")
    c=a+b
    a=b
    b=c

    

#5.string reverse

string=input("enter a string : ")
reversed_string=string[::-1]
print("the reversed string is : ",reversed_string)



#6. Palindrome check

string=input("enter a string : ")
if string==string[::-1]:
    print("the string is a palindrome")
else:
    print("the string is not a palindrome") 

    

#7. Leap year check

year=int(input("enter a year : "))
if (year%4==0 and year%100!=0) or (year%400 ==0):
    print("the year is a leap year")
else:
    print("the year is not a leap year")

    

#8.Armstrong number 

num=int(input("enter a number : "))
order=len(str(num))
sum_val = sum(int(digit)**order for digit in str(num))
if num==sum_val:
    print(f"{sum_val} is an Armstrong number")
else:
    print(f"{sum_val} is not an Armstrong number")