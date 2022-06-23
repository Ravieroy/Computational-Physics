import matplotlib.pyplot as plt
import numpy as np

def func(x,y):
    return x+2*y

def euler(func):

    xn=x0
    yn=y0
    x_val=[]
    y_val=[]
    while xn<xf:

        fxyn= func(xn,yn)
        yn= yn+h*fxyn
        xn=xn+h
        x_val.append(xn)
        y_val.append(yn)

    x = np.linspace(0,1.2,100)
    y = 0.25*np.exp(2*x)- 0.5*x-0.25

    ax = plt.subplot()
    ax.plot(x, y, label='Numerical result')
    ax.plot(x_val, y_val, label='True result')
    plt.title('Euler\'s method')
    ax.legend()
    plt.xlabel("x")
    plt.ylabel("f(x)")
    plt.savefig('Euler.png')
    plt.show()


    return yn
print("The function is f(x,y)= x+2y")

print("SUGGESTION!!!: Press Enter for default values ")


try:
    x0=float(input('Enter the initial value of x: '))
except ValueError:
    x0=0

try:
    y0=float(input('Enter the initial value of y: '))
except ValueError:
    y0=0

try:
   xf=float(input('Enter the value where you want to evaluate:'))
except ValueError:
    xf=1.2

try:
   h= float(input('Enter the interval:'))
except ValueError:
    h=0.01




I= euler(func)
print("The numerical solution at x= "+ str(xf) +" by Euler\'s method is: ","%.5f"% I)


