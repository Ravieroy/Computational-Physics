steps_even=0
steps_odd=0
n= int(input(" Enter the number: "))
print(n)

while(n!=1):
    if (n%2==0):

        n= n/2
        print(int(n))
        steps_even +=1
    else:
        n=3*n+1
        print(int(n))
        steps_odd += 1

steps_even = str(steps_even)
steps_odd = str(steps_odd)
steps_total= int(steps_even) + int(steps_odd)

steps_total= str(steps_total)


print("Number of Even steps: "+ steps_even )
print("Number of Odd steps: "+ steps_odd )

print("Total Number of steps: "+steps_total)




