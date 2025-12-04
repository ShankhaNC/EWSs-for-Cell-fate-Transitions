clc;clear all; close all;
global N0 D0 lemdaN nN I0 kC kT Next g nD gI lemdaD

% % %%PARAMETERS FOR THE SIMULATION
N0=500; D0=1000; I0=200; lemdaN=2; lemdaD =0; nN=2; nD=2; kT=0.00005; kC=0.0005; g=0.1; gI=0.5;  Next = 500; lemdaD =0;

rng("shuffle");
fileID1=fopen('Forward_TS1.csv','w');

tic;
ptraj=[];
t_max = 30;
n=0;
Dext=500;
%Dext=2500;
Dext_Max=2500;
Dext_Min=500;
n_max=1000;
dDext=(Dext_Max-Dext)/n_max;
%dDext=(Dext-Dext_Min)/n_max;
x=3;y=0.015;z=5;
%x=8;	y= 0.012;	 z=5.2;
V=  2000;
while n<n_max
    disp(n);
      n = n + 1;
      t=0;
      Dext=Dext+dDext;
   while t < t_max
        R1=  (1/(1+(z/V)^nN) +lemdaN*(z/V)^nN/(1+(z/V)^nN))*V;
        R2=  kC*x*y*1000/V;
        R3=  kT*x*Dext;
        R4=  g*x;
        R5= (1/(1+(z/V)^nD) +lemdaD*(z/V)^nD/(1+(z/V)^nD))*V;
        R6= kC*x*y*500/V;
        R7= kT*y*Next;
        R8= g*y;
        R9= kT*x*Dext*(500/200);
        R10=gI*z;
        aa=[R1 R2 R3 R4 R5 R6 R7 R8 R9 R10];
        aa0 = sum(aa);
        r = rand(2,1);
        tau = -log(r(1))/aa0;
        rxn = find(r(2)*aa0 <= cumsum(aa),1,'first');
          t = t + tau;
     %   tau
        switch rxn
            case 1
                x=x+1;
            case 2
                x=x-1;
            case 3
                x=x-1;
            case 4
                x=x-1;
            case 5
                y=y+1;
            case 6
                y=y-1;
            case 7
                y=y-1;
            case 8
                y=y-1;
            case 9
                z=z+1;
            case 10
                z=z-1;
        end
    end

    fprintf(fileID1, '%f %f %f %f %f\n',Dext, t, N0*x/V, D0*y/V, I0*z/V);
end
 toc;
