#This code finds roots of the function x^3-20 =0 by Bisection method

import matplotlib.pyplot as plt

import numpy as np


def bisection(f,a,b,N):

    if fun(a)*fun(b)>0:
        print("Choose different values")
        return None


    for n in range(1,N+1):
        m = (a + b)/2
        f_m_n = f(m)
        if f(a)*f_m_n < 0:
            b= m
        elif f(b)*f_m_n < 0:
            a = m
        else:
            print("Bisection method fails.")
            return None
    return (a + b)/2





fun= lambda x:x**3-20
a=1
b=3
N=25

result= bisection(fun,a,b,N)
print("The value of root is : ","%.4f"%result)

#Plotting

# setting the x - coordinates
x = np.linspace(-5,5,100)

# setting the corresponding y - coordinates
y = x**3-20


# setting the axes at the centre
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

# potting the points


plt.plot(x, y)
plt.grid()

plt.title("f(x)= x^3-20")

# function to show the plot
plt.show()
