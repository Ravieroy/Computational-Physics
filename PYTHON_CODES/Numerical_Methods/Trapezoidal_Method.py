import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad

sum=0
def trapz(func,a,b,n):
    h= (b-a)/n
    sum= func(a)+func(b)
    for i in range(1,n): #stops at n-1
        x= a+i*h
        fx= func(x)
        sum += 2* fx
    return (h/2)*sum


func= lambda x: (5*x)*(np.exp(-2*x))

print('The integrand is 5x exp(-2x) ')
a=float(input('Enter the lower limit: '))
b=float(input('Enter the upper limit: '))
n=int(input('Enter the number of intervals: '))

I_trapz= trapz(func,a,b,n)
print("The numerical value of the integral is : ",
                             "%.4f"% I_trapz)
#****Exact Integration ********

def integrand(x,a,b):
    return (5*x)*(np.exp(-2*x))


I_true=quad(integrand,a,b,args=(a,b))
print("The true value of the integral is : ",
                             "%.4f"% I_true[0])

err= I_true[0]-I_trapz
print("The difference from true value of the integral is : ",
                             "%.4f"% err)


#Plotting
x = np.linspace(0,5,100)
y = func(x)

plt.plot(x,y)
plt.grid()
plt.ylabel('Y')
plt.xlabel('X')
plt.title("f(x)= 5x exp(-2x) ")
plt.savefig('Trapezoidal graph.png')
plt.show()

