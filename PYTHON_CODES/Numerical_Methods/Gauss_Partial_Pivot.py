import numpy as np
from time import sleep
coeff=[
    [25,5,1,106.8],
    [64,8,1,177.2],
    [144,12,1,279.2]


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
#Maximum row
def swap():
    for i in range(0,n):
        maxVal= abs(coeff[i][0])
        maxRow=i
        for k in range(i+1,n):
            if abs(coeff[k][0])>maxVal:
                maxRow=k
                maxVal= abs(coeff[k][0])

                tmp = coeff[maxRow]
                coeff[maxRow] = coeff[i]
                coeff[i] = tmp

    return coeff
coeff= swap()
# def swap():
#     for i in range(0,n):
#         for k in range(i, n):
#             tmp = coeff[maxRow]
#             coeff[maxRow] = coeff[i]
#             coeff[i] = tmp
#         return coeff
#
# coeff=swap()

print("The new augmented matrix is: ")
matrix(coeff)




#Forward Elimination

for k in range(0,n-1):
    for i in range(k+1,n):
        factor= (coeff[i][k])/(coeff[k][k])
        temp= np.multiply(coeff[k],factor)
        coeff[i]= np.subtract(coeff[i],temp)
        coeff= np.round(coeff,3)
    print("Coefficient matrix after step "+str(k+1))
    matrix(coeff)

for i in range(1,n):
        maxVal= abs(coeff[i][1])
        maxRow=i
        for k in range(i+1,n):
            if abs(coeff[k][1])>maxVal:
                maxRow=k
                maxVal= abs(coeff[k][1])

                tmp = coeff[maxRow]
                coeff[maxRow] = coeff[i]
                coeff[i] = tmp

matrix(coeff)









#
# #Back Substitution
# x=np.zeros(n) #Makes an list of zeros of order n
#
# for i in range(n-1, -1, -1):
#     x[i] = coeff[i][n]/coeff[i][i]
#     for k in range(i-1, -1, -1):
#         coeff[k][n] -= coeff[k][i] * x[i]
#
# print("The values are: ")
# x=np.round(x,2)
# # sleep(2)
# print(x)
#
#
#
