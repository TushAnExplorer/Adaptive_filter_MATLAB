clc;
close all;
clear all;

load 01_task3_x_d.mat %load signals x and d
len =1000;
N= 4;
mu = 0.01;
k=(0:len-1);
w0=0;


n = 1e-3*randn(length(d),1);
d = d + n;



%lms2 Funtion call
[y,e,w] = lms3(x,d,N,mu);
h = round(w(:,end),1);
w = round(w,1);
%Plotting the Input, Output and Desired Signals

figure(1)

plot(k,x,'*k')
hold on
plot(k,y,'or')
hold on
plot(k,d,'-b')

legend('x','y','d');
xlabel('k');
ylabel('x,y,d');
