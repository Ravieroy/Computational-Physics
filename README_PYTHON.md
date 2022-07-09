# List of Python codes
## Table of Contents
- [Intermediate Stuffs](#Intermediate-stuffs)
- [Basic Stuffs](#Basic-stuffs)
- [VPython Codes](#VPython-Codes)
- [Teaching Assistant 2022](#Teaching-Assistant-2022)
- [Miscellaneous](#Miscellaneous)

## Intermediate stuffs[^1]

| Name | Description |
| ---- | ----------- |
| [rhoMu](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/rhoMu.ipynb)                                                         | Animation for Mott transition in Hubbard Hamiltonian as function of U (Reference PDF is mentioned in notebook) |
| [SIAM_MFT](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/SIAM_MFT.ipynb)                                                   | Basic Anderson Impurity Model (SIAM)                                                                           |
| [Superconducting_Gap](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Superconducting_Gap.ipynb)                             | Solving the self-consistent gap equation to get the infamous plot $\Delta(T)$ vs $T$                           |
| [Ising](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Ising.ipynb "Ising.ipynb")                                           | Animation showing the fluctuation in Ising model                                                               |
| [Simulated_Annealing](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Simulated_Annealing.ipynb "Simulated_Annealing.ipynb") | Simulated Annealing                                                                                            |
| [rho_VS_mu](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/rho_VS_mu.ipynb "rho_VS_mu.ipynb")                               | Same as rhoMu but only the plots (no animation)                                                                 |
| [Presentation](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Presentation.ipynb "Presentation.ipynb")                      | Basic presentation made in Jupyter notebook on Hubbard model, Ising Model and SIAM                             |
| [Presentation.slides](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Presentation.slides.html "Presentation.slides.html")   | HTML slides of the above Presentation (can be directly opened in browser)                                                                                                               |

---
## Basic Stuffs[^2]

| Name                                                                                                                                                            | Description                                                                                                    |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| [1D_Potential_Euler](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/1D_Potential_Euler.ipynb)                               | Phase Space Trajectories for $V(x)=(x^2−1)^2$ : Euler Method                                                   |
| [1D_Potential_RK2](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/1D_Potential_RK2.ipynb)                                   | Phase Space Trajectories for $V(x)=(x^2−1)^2$ : RK-2 Method                                                    |
| [1D_Potential_RK4](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/1D_Potential_RK4.ipynb)                                   | Phase Space Trajectories for $V(x)=(x^2−1)^2$ : RK-4 Method                                                    |
| [1D_Potential_Verlet](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/1D_Potential_Verlet.ipynb)                             | Phase Space Trajectories for $V(x)=(x^2−1)^2$ : Verlet Algorithm                                               |
| [Halley's Comet](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Notebooks/Halley's%20Comet.ipynb "Halley's Comet.ipynb")              | Position Vs Time plot for Halley's comet                                                                       |
| [Bisection_Method](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Bisection_Method.py)     | Finds roots of the function $x^3-20 =0$ by Bisection method           |
| [Bisection_Method_2](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Bisection_Method_2.py)   | Finds roots of the function $x^3-20 =0$ by Bisection method(Method 2) |
| [Compare](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Compare.py)              | Compare Euler, RK-2 and RK-4 method                                   |
| [Euler_method](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Euler_method.py)         | Euler method                                                          |
| [Gauss_quad](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Gauss_quad.py)           | Gauss Quadrature method                                               |
| [Machine_precision](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Machine_precision.py)    | Machine precision                                                     |
| [Naive_Gauss](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Naive_Gauss.py)          | Gauss Elimination method                                              |
| [Newton_Raphson](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Newton_Raphson.py)       | Newton-Raphson method (Menu driven)                                   |
| [Newton_Raphson_2](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Newton_Raphson_2.py)     | Newton_Raphson_2 (BASIC)                                              |
| [RK_2](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/RK_2.py)                 | Runge-Kutta Method (RK-2)                                             |
| [RK_4](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/RK_4.py)                 | Runge-Kutta Method (RK-4)                                             |
| [Simpson's_3_8_Method](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Simpson's_3_8_Method.py) | Simpson's 3/8 Method                                                  |
| [Simpson's_Method](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Simpson's_Method.py)     | Simpson's 1/3 Method                                                  |
| [Trapezoidal_Method](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Numerical_Methods/Trapezoidal_Method.py)   | Trapezoidal Method                                                                       |

## VPython Codes
These are VPython codes which are great for learning basic stuffs and solve basic stuffs.  Use [Glowscript](https://glowscript.org/) or [Trinket](https://trinket.io/) to run these type of programs. Just make a free account there and run VPython codes there.

| Name                                                                                                                                                                                                          | Description                               |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [Projectile_Motion_basic](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/VPython/Projectile_Motion_basic.py)                                                                        | Basic implementation of Projectile Motion |
| [Projectile_Motion_mult_balls](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/VPython/Projectile_Motion_mult_balls.py "Projectile_Motion_mult_balls.py")                            | Projectile motion with multiple balls     |
| [Projectile_Motion_with_air_Resistance](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/VPython/Projectile_Motion_with_air_Resistance.py "Projectile_Motion_with_air_Resistance.py") | Projectile Motion with air resistance                                          |

---
## Teaching Assistant-2022
These are the solution to the problems set during my TA in 2022 for the class Material Design. 

| Name             | Description                   |
| ---------------- | ----------------------------- |
| [Assignment_0.pdf](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Problems/Assignment_0.pdf) | Assignment-0 Questions(PDF)   |
| [Assignment_0.tex](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Problems/Assignment_0.tex) | Assignment-0 Questions(LaTex) |
| [A0_P01](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Solutions/A0_P01.ipynb)           | Solution to Problem 1         |
| [A0_P02](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Solutions/A0_P02.ipynb)           | Solution to Problem 2         |
| [A0_P03](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Solutions/A0_P03.ipynb)           | Solution to Problem 3         |
| [A0_P04](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_0/Solutions/A0_P04.ipynb)           | Solution to Problem 4         |
| [Assignment_1.pdf](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Problems/Assignment_1.pdf) | Assignment-1 Questions(PDF)   |
| [Assignment_1.pdf](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Problems/Assignment_1.tex) | Assignment-1 Questions(LaTex) |
| [A1_P01](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Solutions/A1_P01.ipynb)           | Solution to Problem 1         |
| [A1_P02](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Solutions/A1_P02.ipynb)           | Solution to Problem 2         |
| [A1_P03](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Solutions/A1_P03.ipynb)           | Solution to Problem 3         |
| [A1_P04](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Solutions/A1_P04.ipynb)           | Solution to Problem 4         |
| [A1_P05](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_1/Solutions/A1_P05.ipynb)           | Solution to Problem 5         |
| [Assignment_2.pdf](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_2/Problems/Assignment_2.pdf) | Assignment-2 Questions(PDF)   |
| [Assignment_2.tex](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/TA_2022/Assignment_2/Problems/Assignment_2.tex) | Assignment-2 Questions(LaTex) |

## Miscellaneous 
These are miscellaneous codes written just for fun and learning 

[Back to top](#Table-of-Contents)


| Name                                                                                                                      | Description                      |
| ------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| [Collatz_conjecture](https://github.com/Ravieroy/Computational-Physics/blob/main/PYTHON_CODES/Misc/Collatz_conjecture.py) | Implementation of Collatz Conjecture |

[^1]:   Requires basic understanding of Python and Physics 
[^2]: Requires basic understanding of Python and familiarity with the specific topic in Physics

