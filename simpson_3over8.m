%simpson 3/8 method composite
clc ;
f= input ('Enter Function eg "@(x)x*log(x)": ');
N= input ('Enter n: ');
a= input ('Enter a (lower limit): ');
b= input ('Enter b (upper limit): ');
h= (b-a)/N;
sum = 0;
oddsum = 0;
for i=3:3:N-1
    sum = sum + f(a+i*h);
end

for j=1:N-1
    oddsum = oddsum + f(a+j*h);
end
temp = oddsum - sum;
simpson = (3*h/8)*(f(a) + 3*temp + 2*sum + f(b));
fprintf ('Area under curve by simpson 3/8rd rule= %.6f\n',simpson);
%K19-0325
%K19-1310
%K19-0151
%K19-1418