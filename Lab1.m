%%Lab1   Using the T equivalent circuit find RMS Voltage and Power for
%%given Load Resister and Frequency Values
%Output power does not continue to increase as load is decreased because
%the current drops off at saturation.
format compact
clc
clear all
Lm1=262.9e-3;  %Henry
Ll1=27.1e-3;  %Henry
Ll2_p=27.1e-3; %Henry
r1=12;  %Ohms
r2_p=10;  %Ohms
R=[2000,200,20,10];  %Load Resister (Ohms)
f=[60,400];   %Frequency (Hz)
VRMSin=120; %Volts
w=2*f*pi;
Xl1=j*w*Ll1; %reactance
Xl2_p=j*w*Ll2_p; %reactance
Xm1=w*Lm1*j;  %reactance
%Total Impedance
for i=1:4;
    for k=1:2;
        fpart(i,k)=(R(i)+r2_p+Xl2_p(k));
        lpart(i,k)=(fpart(i,k)+Xm1(k));
        Z_tot(i,k)=fpart(i,k)*Xm1(k)/(lpart(i,k))+Xl1(k)+r1;
    end;
end;

%Current
reshape(Z_tot,[1,8]);
reshape(fpart,[1,8]);
reshape(lpart,[1,8]);
for i=1:8;
    i1(i)=VRMSin/Z_tot(i);
end;
for i=1:8;
    im1(i)=fpart(i)*i1(i)/lpart(i);
    i2_p(i)=im1(i)-i1(i);
    if i<5
        VRMSout(i)=abs(i2_p(i)*R(i));
        Pout(i)=VRMSout(i)^2/R(i);
    else
        VRMSout(i)=abs(i2_p(i)*R(i-4));
        Pout(i)=VRMSout(i)^2/R(i-4);
    end;
end;
VoltageRMSout_PowerOut=[VRMSout' Pout']
