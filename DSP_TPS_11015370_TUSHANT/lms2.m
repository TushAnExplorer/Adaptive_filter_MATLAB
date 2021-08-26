function [y,e,w] = lms2(x,d,N,mu)
iter = length(x);

y = zeros(iter,1);
w = zeros(N,iter);
w_new = zeros(N,1);
e = zeros(iter,1);
k = (0:iter-1);
x_w = zeros(N,1);
MSE = zeros(1,1);
Cuml_E = zeros(1,1);

for i =  1:iter
    if i==1
        x_w(1)=  x(i);
    elseif  i > 1 
        x_w(2) = x_w(1);
        x_w(1) = x(i);
    end
        
     y(i) = (w_new)'* x_w; % Adaptive filter output
    e(i) = d(i) - sum( (w_new)'* x_w) ;
    disp(e(i));
        w_new = w_new + mu * e(i) * x_w;
        w(1,i)= w_new(1);
        w(2,i)= w_new(2);
end

for i = 1:iter
    
    err(i) = e(i).^2; 
        Cuml_E = Cuml_E + err(i); 
           % MSE(i) = MSE(i)/iter;   

end

MSE = Cuml_E/iter;
%for i = 1:N
    %w_new(i) = x_w(i) * x(i);
%end
disp(MSE);


figure(2)
semilogy(k,err)
title('Learning curve');
grid on
xlabel('k');
ylabel('e.^2');
xlim([1 1000])

figure(3) %convergence of w[k]=[w1[k],w2[k]],
plot(w(1,:),w(2,:), '+');
title('convergence of w[k]=[w1[k],w2[k]]');
xlabel('w_1[k]');
ylabel('w_2[k]');
%figure (3)
%plot(w_new(1,:),w_new(2,:),'Linewidth',2,'+');
%xlabel('w_1[k]')

