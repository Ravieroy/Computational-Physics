#This code finds the roots of function by Newton_Rapshon method

#Four different functions are used displaying four kinds of out which can be obtained by this method

#The function  x^3-20=0 gives result in 7 iterations and shows the way to find correct roots of the function

#The function  x^(1/3)=0 is an example where the Newton_Raphson method fails as the result goes to infinity

#The 1-4x+6x^2-4x^3+x^4 is special as it requires large number of iterations to get the output

#The function  1-x^2 is special due to its initial guess of x=0. which makes the derivative zero

#The program lets user choose the function by pressing "a", "b", "c" or "d"

# In order to change the initial values, values should be changed from the source code itself.




import matplotlib.pyplot as plt

import numpy as np

#definition for Newton-Raphson Method

def newton_raphson(fun,d_fun,guess, eps, max_iter):


    xn=guess
    for n in range(0,max_iter):
        fxn=fun(xn)
        if abs(fxn ) < eps: #Checks for solution
            print("Found solution in " +str(n)+ " iterations ")
            return (xn)
        deriv_fxn=d_fun(xn)
        if deriv_fxn==0:
            print("Zero derivative. Hence no solution ")
            return None
        xn=xn-fxn/deriv_fxn # Formula for N-R method
    else:
        print("Exceeded maximum iteration ")

    return None

#Prompts for the choices
print("a: x^3-20=0")
print("b: x^(1/3)=0")
print("c: 1-4x+6x^2-4x^3+x^4 ")
print("d: 1-x^2")

choice= input("Enter the type of function you want to find root of: ")

#Conditional statements to evaluate for roots

#*****-------------******************

# for the function: x^(1/3)=0
if choice=="b":
    fun=lambda x:x**(1/3)
    d_fun= lambda x:(1/3)*x**(-2/3)
    guess= 1
    eps= 0.001
    max_iter=10
    result= newton_raphson(fun,d_fun,guess,eps,max_iter)

    print(result)

    #Plotting

    x = np.linspace(0,5,100)
# setting the corresponding y - coordinates
    y = x**(1/3)

    # potting the points
    plt.plot(x, y)
    plt.grid()
    plt.ylabel('Y')
    plt.xlabel('X')
    plt.title("f(x)= x^(1/3) ")

# function to show the plot
    plt.show()

#****---------------------*****
#For function x^3-20 =0
elif choice=="a":

    fun= lambda x:x**3-20
    d_fun=lambda x:3*x*x
    guess= 1
    eps= 0.001
    max_iter=1000
    result= newton_raphson(fun,d_fun,guess,eps,max_iter)

    print("The value of the root is : ",
                             "%.4f"% result)


    #Plotting

    x = np.linspace(-5,5,100)
# setting the corresponding y - coordinates
    y = x**3-20

    # potting the points
    plt.plot(x, y)
    plt.grid()
    plt.ylabel('Y')
    plt.xlabel('X')
    plt.title("f(x)= x^3 - 20 ")

# function to show the plot
    plt.show()

#*****-------------------**********
#For function: 1-4x+6x^2-4x^3+x^4
elif choice=="c":
    fun= lambda x: 1-4*x+6*x*x-4*x*x*x+x**4
    d_fun=lambda x:-4+4*x
    guess= 0.5
    eps= 0.001
    max_iter=100
    result= newton_raphson(fun,d_fun,guess,eps,max_iter)

    print("The value of the root is : ",
                             "%.4f"% result)

    #Plotting

    x = np.linspace(-5,5,100)
# setting the corresponding y - coordinates
    y = 1-4*x+6*x*x-4*x*x*x+x**4

    # potting the points
    plt.plot(x, y)
    plt.grid()
    plt.ylabel('Y')
    plt.xlabel('X')
    plt.title("f(x)=1- 4x + 6x^2 -4x^3 + x^4")

# function to show the plot
    plt.show()


#**********---------*************

#For function: 1-x^2=0


else:
    fun= lambda x: 1-x**2
    d_fun=lambda x:-2*x
    guess= 0
    eps= 0.001
    max_iter=10
    result= newton_raphson(fun,d_fun,guess,eps,max_iter)

    print(result)

    x = np.linspace(-5,5,100)
# setting the corresponding y - coordinates
    y = 1-x**2

    # potting the points
    plt.plot(x, y)
    plt.grid()
    plt.ylabel('Y')
    plt.xlabel('X')
    plt.title("f(x)=1-  x^2")

# function to show the plot
    plt.show()

#*******------------------***********

