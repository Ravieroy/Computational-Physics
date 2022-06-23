import numpy as np
from scipy.integrate import quad

weight=[[1.0000000000000000,1.0000000000000000],
        [0.8888888888888888,0.5555555555555556,0.5555555555555556],
        [0.6521451548625461,0.6521451548625461,0.3478548451374538,0.3478548451374538]]

args= [[-0.5773502691896257, 0.5773502691896257],
       [0.0000000000000000,-0.7745966692414834,0.7745966692414834],
       [-0.3399810435848563,0.3399810435848563,-0.8611363115940526,0.8611363115940526]]

def func(x,a,b):
    return (5*x)*(np.exp(-2*x))

def gauss_quad(func):

    sum =0
    gauss=0

    if a!=1 and b!=-1:
        for i in range(0,n):
            z= (a+b+(b-a)*args[n-2][i])/2
            y= func(z,a,b)
            T= weight[n-2][i]*y
            sum= sum+T
            gauss= (b-a)/2 * sum


    else:
        for i in range(0,n):
            y=func(args[n-2][i],a,b)
            T= weight[n-2][i]*y
            sum= sum+T
            gauss=sum

    return gauss


print("SUGGESTION!!!: Press Enter for default values ")


try:
    a=float(input('Enter the lower limit : '))
except ValueError:
    a=0.1

try:
    b=float(input('Enter the upper limit: '))
except ValueError:
    b=1.3

try:
    n=int(input('Enter the order of Gauss quadrature ( 2, 3, 4 ): '))
except ValueError:
    n= 2


# a=float(input('Enter the lower limit: '))
# b=float(input('Enter the upper limit: '))
# n=int(input('Enter the order of Gauss quadrature ( 2, 3, 4 ): '))

I_true=quad(func,a,b,args=(a,b))
I_gauss = gauss_quad(func)

err= abs(I_true[0]- I_gauss)

print('The integrand is 5x exp(-2x) ')
print("The true value of the integral is : ",
                             "%.6f"% I_true[0])


print("The value by "+ str(n)+" order Gauss quadrature is: ","%.6f"%I_gauss)

print("The absolute error value is: ","%.6f"%err)





