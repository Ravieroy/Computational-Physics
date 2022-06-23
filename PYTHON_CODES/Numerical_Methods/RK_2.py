import numpy as np
import matplotlib.pyplot as plt


def func(x,y):
    return x+2*y

def rk_2(func):

    xn=x0
    yn=y0
    h=0.1
    x_val=[]
    y_val=[]
    while xn<xf:
        s1= func(xn,yn)
        s2= func(xn+h, yn+h*s1)
        s=(s1+s2)/2
        xn += h
        yn += h * s
        x_val.append(xn)
        y_val.append(yn)


    x = np.linspace(0,1.2,100)
    y = 0.25*np.exp(2*x)- 0.5*x-0.25

    ax = plt.subplot()
    ax.plot(x, y, label='True result')
    ax.plot(x_val, y_val,'ro', label='Numerical result')
    plt.xlabel("x")
    plt.ylabel("f(x)")
    plt.savefig('RK-2.png')
    plt.title('Numerical result by RK-2 method ')
    ax.legend()
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
   xf=float(input('Enter the value where you want to evaluate: '))
except ValueError:
    xf=1.2

try:
   h= float(input('Enter the interval: '))
except ValueError:
    h=0.1



I_rk= rk_2(func)
print("The numerical solution at x= "+ str(xf) +" by RK-2 is: ","%.5f"% I_rk)




