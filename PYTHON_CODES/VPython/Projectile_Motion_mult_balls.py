from vpython import *
#Web VPython 3.2

floor=box(pos=vector(0,-.02,0), size=vector(2,.02,.4))

def proj_motion():
  offset = 0
  for i in range(N):
    v0=ballv0[i]
    theta=theta_[i]
    g=vector(0,g_[i],0)
    c=vector(random(),random(),random())
    rho=rho_[i]
    C=C_[i]
    ball = sphere(pos=ballP[i], radius=r[i], color=c, make_trail=True)
    ball.m=ballM[i]
    ball.p=ball.m*v0*vector(cos(theta*pi/180),sin(theta*pi/180),0)
    initial_pos = ball.pos # storing initial position
    A=pi*ball.radius**2
    t=0
    dt=0.01
    y_list=[]
    
    while ball.pos.y>=0 :
      rate(100)
      v = ((ball.p)/ball.m)
      Fnet = ball.m * g - 0.5*rho*C*dot(v,v)*norm(v)
      ball.p = ball.p + Fnet * dt
      ball.pos = ball.pos + ((ball.p)/ball.m)*dt
      t=t+dt
      y_list.append(ball.pos.y)
  
    max_ht = max(y_list)
    final_pos = ball.pos
    diff_pos = final_pos - initial_pos
    range_arrow = arrow(pos=vector(-1,-0.1 - offset,0),axis=diff_pos,shaftwidth=0.01,color=c)
    offset = offset + 0.1
    range_ = '{:g}'.format(float('{:.1g}'.format(ball.pos.x)))+'m'
    label( pos=ball.pos+vector(0.1,-offset,0), text=range_, box = False,color=c)
    
    print(f"-------Information for Ball-{i+1}--------")
    print("Max Height:",max_ht)
    print("Time in air: ",t)
    print("Range:", ball.pos.x)
  
#Variables 
N=2
ballP=[vector(-1,0,0),vector(-1,0,0)]
ballM=[0.1,0.5]
ballv0=[4.0,4.0]
r=[0.02,0.02]
theta_=[60,45]
g_=[-9.8,-9.8]
rho_=[0,0]
C_=[0,0.0] 
# c=[vector(1,0,0),vector(0,1,0)]
proj_motion()
  
  