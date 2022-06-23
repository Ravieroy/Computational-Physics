import numpy as np
from time import sleep
coeff=[
    [25,5,1,106.8],
    [64,8,1,177.2],
    [144,12,1,279.2],


]

#Definition for printing of the coefficient matrix
n=len(coeff)
def matrix(coeff):
    for i in range(0, n):
        line = ""
        for j in range(0, n+1):
            line += str(coeff[i][j]) + "          \t"
            if j == n-1:
                line += "| "
        print(line)
    print("")
print("The coefficient matrix is: ")
matrix(coeff)

#Forward Elimination
for k in range(0,n-1):
    for i in range(k+1,n):
        factor= (coeff[i][k])/(coeff[k][k])
        temp= np.multiply(coeff[k],factor)
        coeff[i]= np.subtract(coeff[i],temp)
        coeff= np.round(coeff,3)
    print("Coefficient matrix after step "+str(k+1))
    sleep(2)
    matrix(coeff)

#Back Substitution
x=np.zeros(n) #Makes an list of zeros of order n

for i in range(n-1, -1, -1):
    x[i] = coeff[i][n]/coeff[i][i]
    for k in range(i-1, -1, -1):
        coeff[k][n] -= coeff[k][i] * x[i]

print("The values are: ")
x=np.round(x,2)
sleep(2)
print(x)



