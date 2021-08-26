clc;
close all;
clear all;

fprintf('learning curves with and without noise? /n Input :\n');
fprintf(' 1(with Noise),\n 2(Without Noise),\n 3(Both Simultaneously) \n');

LC=input('Select :');


switch LC
    case 1
        len =1000;
        N= 2;
        k=(0:len-1);
        w0=0;
        
        %Desired Signal d
        d=ones(len,1);
        
        %Input Signal x
        x=ones(len,1)*2;
        
        n = 1e-4*randn(length(d),1);
        d = d + n;
        
        %Stepsize
        mu=input('mu = ');
        
        %lms2 Funtion call
        [y,e,w] = lms2(x,d,N,mu);
        
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
        
    case 2
        
        len =1000;
        N= 2;
        k=(0:len-1);
        w0=0;
        
        %Desired Signal d
        d=ones(len,1);
        
        %Input Signal x
        x=ones(len,1)*2;
        
        %n = 1e-4*randn(length(d),1);
        %d = d + n;
        
        %Stepsize
        mu=input('mu = ');
        
        %lms2 Funtion call
        [y,e,w] = lms2(x,d,N,mu);
        
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
        
        
    case 3
        clear all;
        len =1000;
        N= 2;
        k=(0:len-1);
        w0=0;
        
        %Desired Signal d
        d=ones(len,1);
        
        %Input Signal x
        x=ones(len,1)*2;
        
        n = 1e-4*randn(length(d),1);
        d = d + n;
        
        %Stepsize
        mu=input('mu = ');
        
        %lms2 Funtion call
        [y,e,w] = lms2(x,d,N,mu);
        
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
        
        
        clear all;
        len =1000;
        N= 2;
        k=(0:len-1);
        w0=0;
        
        %Desired Signal d
        d=ones(len,1);
        
        %Input Signal x
        x=ones(len,1)*2;
        
        % n = 1e-4*randn(length(d),1);
        % d = d + n;
        
        %Stepsize
        mu=input('mu = ');
        
        %lms2 Funtion call
        [y,e,w] = lms2(x,d,N,mu);
        
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
        
end