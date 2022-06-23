import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad
sum=0
def simpsons(func,a,b,N):
    h= (b-a)/N
    fx0= func(a)
    fxn= func(b)
    sum = fx0+fxn
    for i in range(1,N):
        if i%2==0:
            x=a+i*h
            sum+=2*func(x)
        else:
            x=a+i*h
            sum+= 4*func(x)
    return (h/3)*sum

func= lambda x: (5*x)*(np.exp(-2*x))

print('The integrand is 5x exp(-2x) ')
a=float(input('Enter the lower limit: '))
b=float(input('Enter the upper limit: '))
N=int(input('Enter the number of intervals: '))


I_simps= simpsons(func,a,b,N)
print("The numerical value of the integral by Simpson's rule is : ",
                             "%.6f"% I_simps)

def integrand(x,a,b):
    return (5*x)*np.exp(-2*x)

I_true= quad(integrand,a,b,args=(a,b))

err= I_true[0]- I_simps
print("The true value of the integral is : ",
                             "%.6f"% I_true[0])

print("The error in the integral  is : ",
                             "%.6f"% err)

#****Plotting*******

#Plotting
x = np.linspace(0,5,100)
y = func(x)

plt.plot(x,y)
plt.grid()
plt.ylabel('Y')
plt.xlabel('X')
plt.title("f(x)= 5x exp(-2x) ")
plt.savefig('Simpson\'s method graph.png')
plt.show()





