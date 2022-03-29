%trapezoidal method
clc
f= input ('Enter function: e.g. "@(x)x^(2)*log(x)" : ');
N=input ('Enter n: ');
a= input ('Enter Lower Limit: ');
b= input ('Enter Upper Limit: ');
h= (b-a)/N;
sum=0;

for i=1:N-1
	sum=sum+f(a+i*h);
end
ans= (h/2)*(f(a) +2*sum +f(b));
fprintf('Result using trapezoidal rule is: %.6f\n',ans)
%K19-0325
%K19-1310
%K19-0151
%K19-1418