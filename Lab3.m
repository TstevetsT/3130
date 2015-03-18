%%Lab3 Synchronous Devices
format compact
clc
clear all

%{  
Add a third similar winding, i3 , to the Example 1B in the text as indicated 
in the picture below (3 - 3’).  The flux linkage will be 
Lambda3=L31i1+L32i2+L33i3
The flux linkages for the other two windings are also different now.
It is helpful to formulate an expression for the Elecromagnetic Torque of 
the elementary rotational device shown in Fig. 1B-1. This device consists 
of two conductors. Conductor 1 is placed on the stationary member (stator); 
conductor 2 is fixed on the rotating member (rotor). The crossed lines
inside a circle indicate that the assumed direction of positive current 
flow is into the paper (we are seeing the tail of the arrow), whereas a 
dot inside a circle indicates positive current flow is out of the paper 
(the point of the arrow). The length of the air gap between the stator 
and rotor is shown exaggerated relative to the inside diameter of the stator.

	1. What is L31=L13=Lambda1/i3 with i1=i2=0?   
        Since i1 and i2 =0 and they are 90 out of phase there is no flux 
        linkage and L31 is also ZERO
	2. Is L33=Lambda3/i3 with i1=i2=0 a constant?  
        For a linear electromagnetic system the lambda-i plots are straight-
        line relationships; thus for the singly excited system we have
            lambda(i,x)=L(x)i  OR  i(lambda,x)=lambda/L(x)
        Therefore, YES L33 is a constant

    3.  Find L23=lambda2/i3 with i1=i2=0  (presume that it can be 
        approximated by a sine or cosine of thetar with amplitude M)?
        lambda2=L23*i3+L22*i2+L21*i1       Since i1 and i2 are both zero   
        lambda2=L23*i3    therefore L23=lambda2/i3=M cos(thetaR+90 deg)

    4.  Find L32?
 
%}