clc
close all
clear all

len=1000;
N=1;
w0=0;
k=(0:len-1);
d=ones(len,1);
x=ones(len,1)*2;


mu=input('mu = ');

y = lms1(x,d,N,mu);


figure(1)

plot(k,x,'*b')
hold on
plot(k,y,'.r')
hold on
plot(k,d,'-g')
hold on
title('LMS Algorithm - Iput, Output and Desired signals')
legend('x[k]','y[k]','d[k]');
xlabel('k');
ylabel('x[k],y[k],d[k]');







