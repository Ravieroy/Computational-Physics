import numpy as np
import matplotlib.pyplot as plt


def func(x,y):
    return x+2*y

def RK4(func):

    xn=0
    yn=0
    xf=1.2
    h=0.1
    x_val=[]
    y_val=[]
    while xn<xf:

        s1= func(xn,yn)
        s2= func(xn+(h/2), yn+(h/2)*s1)
        s3= func(xn+(h/2), yn+(h/2)*s2)
        s4 = func(xn+h, yn+h*s3)
        s=(1/6)*((s1+2*s2+ 2*s3 +s4))
        xn=xn+h
        yn= yn+h*s
        x_val.append(xn)
        y_val.append(yn)

    x = np.linspace(0,1.2,100)
    y = 0.25*np.exp(2*x)- 0.5*x-0.25

    ax = plt.subplot()
    ax.plot(x, y, label='True result')
    ax.plot(x_val, y_val,'ro', label='Numerical result')
    plt.xlabel("x")
    plt.ylabel("f(x)")
    plt.savefig('RK-4.png')
    plt.title('Numerical result by RK-4 method ')
    ax.legend()
    plt.show()
    return yn

I_rk= RK4(func)
print(I_rk)




