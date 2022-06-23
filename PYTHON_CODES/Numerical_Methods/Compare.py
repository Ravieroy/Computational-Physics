import numpy as np
import matplotlib.pyplot as plt


def func(x,y):
    return x+2*y

def compare(func):
    xn,yn,xf,h= 0,0,1.2,0.1

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
    print (" The value of integral from RK-2 is: ", "%.5f"%yn)

    xn,yn,xf,h= 0,0,1.2,0.1
    rk4_xList=[]
    rk4_yList=[]

    while xn<xf:

        s1= func(xn,yn)
        s2= func(xn+(h/2), yn+(h/2)*s1)
        s3= func(xn+(h/2), yn+(h/2)*s2)
        s4 = func(xn+h, yn+h*s3)
        s=(1/6)*(s1+2*s2+ 2*s3 +s4)
        xn += h
        yn += h * s
        rk4_xList.append(xn)
        rk4_yList.append(yn)
    print (" The value of integral from RK-4 is: ", "%.5f"%yn)


    xn,yn,xf,h= 0,0,1.2,0.1
    euler_xList=[]
    euler_yList=[]

    while xn<xf:

        fxyn= func(xn,yn)
        yn += h * fxyn
        xn += h
        euler_xList.append(xn)
        euler_yList.append(yn)

    print (" The value of integral from Euler is: ", "%.5f"%yn)

    x = np.linspace(0,1.2,100)
    y = 0.25*np.exp(2*x)- 0.5*x-0.25

    ax = plt.subplot()
    ax.plot(x, y,'k', label='True Result')
    ax.plot(x_val, y_val, label='RK-2')
    ax.plot(euler_xList, euler_yList, label='Euler')
    ax.plot(rk4_xList,rk4_yList,"ro", label="RK-4")
    plt.xlabel("x")
    plt.ylabel("f(x)")
    plt.savefig('Comparison.png')
    plt.title('Comparison plot between Euler\'s method, RK-4 and RK-2 ')
    ax.legend()
    plt.show()
    return None


print(" The function is f(x,y)= x+2y")

print(" y(0)=0 and to be evaluated at x=1.2 with step size, h = 0.1 ")

I_rk= compare(func)




