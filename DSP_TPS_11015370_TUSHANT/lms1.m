function y = lms1(x,d,N,mu)

iter = length(x);


w=zeros(N,iter); 
k=(0:iter-1);
w_new=zeros(N,iter);
for i = 1:iter
    if i>1
    w(i) = w_new(i-1);
    end
   y(i) = w(i) * x(i);
   e(i) = d(i) - w(i) * x(i);
   w_new(i) = w(i) + mu * e(i) * x(i);
   
end

