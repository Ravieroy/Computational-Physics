import matplotlib.pyplot as plt

import numpy as np

def newton_raphson(fun,d_fun,guess, eps, max_iter):

    xn=x_0
    xn1=x_1
    for n in range(0,max_iter):
        fxn=fun(xn)
        fxn1=fun(xn1)
        if abs(fxn ) < eps: #Checks for solution
            print("Found solution in " +str(n)+ " iterations ")
            return (xn)
        xn=xn- (fxn*(xn1-xn))/(fxn1-fxn) # Formula for N-R method
    else:
        print("Exceeded maximum iteration ")

    return None

fun=lambda x:x**3-20
x_0=1
x_1=3
eps =0.001
max_iter=10
result= newton_raphson(fun,x_0,x_1,eps,max_iter)

print("The value of the root is : ",
                             "%.4f"% result)

x = np.linspace(-2,3,100)
y = fun(x)

plt.plot(x,y)
plt.grid()
plt.ylabel('Y')
plt.xlabel('X')
plt.title("f(x)= x^3-20 ")
plt.annotate('Root ', xy=(result,0), xytext=(1,3),
             arrowprops=dict(facecolor='black', shrink=0.01),
             )
plt.xticks(np.arange(-3,4,0.5))
plt.yticks(None)
plt.savefig('Newton_Raphson graph.png')

plt.show()