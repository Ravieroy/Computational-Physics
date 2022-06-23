from vpython import *
#Web VPython 3.2
#make the floor and ball
floor=box(pos=vector(0,-.02,0), size=vector(2,.02,.4))
ball=sphere(pos=vector(-1,0,0), radius=0.02, color=color.red, make_trail=True)

def projectile_motion(g_=-9.8,m_=0.1,v0=4.0,theta_=60):
  initial_pos = ball.pos # storing initial position
  g=vector(0,g_,0) # value of accln. due to gravity(default = -9.8ms^-2)
  ball.m = m_ # mass of the ball
  v0= v0 # initial velocity
  theta = theta_ #degrees

  ball.p=ball.m*v0*vector(cos(theta*pi/180),sin(theta*pi/180),0)

  t=0
  dt=0.01
  y_list=[]
  while ball.pos.y>=0:
      rate(100)
      Fnet = ball.m * g
      ball.p = ball.p + Fnet * dt
      ball.pos = ball.pos + ((ball.p)/ball.m)*dt
      t=t+dt
      y_list.append(ball.pos.y)
  
  max_ht = max(y_list)
  
  final_pos = ball.pos
  r = final_pos - initial_pos
  range_arrow = arrow(pos=vector(-1,-0.1,0),axis=r,shaftwidth=0.01)
  range_ = '{:g}'.format(float('{:.1g}'.format(ball.pos.x)))+'m'
  label( pos=vec(-0.2,-0.25,0), text=range_, box = False )
  
  
  print("Max Height:",max_ht)
  print("Time in air: ",t)
  print("Range:", ball.pos.x)

#run the program 
projectile_motion()
