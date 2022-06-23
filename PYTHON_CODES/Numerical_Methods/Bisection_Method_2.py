import matplotlib.pyplot as plt

import numpy as np

def bisection(a,b,eps):

	if (func(a) * func(b) >= 0):
		print("Wrong initial choices\n")
		return


	while ((b-a) >= eps):

		c = (a+b)/2

		if func(c) == 0.0:
			print("Found the roots")

		if func(c)*func(a) < 0:
			b = c
		else:
			a = c

	print("The value of root is : ","%.4f"%c)

func= lambda x: x**3-20
# Initial values assumed
a =2
b = 3
eps=0.001
bisection(a, b, eps)

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

# function to show the plot
plt.show()


