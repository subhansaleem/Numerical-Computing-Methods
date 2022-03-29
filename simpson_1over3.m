%simpson_1/3 method composite
clc ;
f= input ('Enter Function eg "@(x)x*log(x)": ');
N= input ('Enter n: ');
a= input ('Enter a (lower limit): ');
b= input ('Enter b (upper limit): ');
h= (b-a)/N;
sum = 0;
oddsum = 0;
for i=1:2:N-1
    oddsum = oddsum + f(a+i*h);
end

evensum=0;
for j=2:2:N-2
    evensum = evensum + f(a+j*h);
end
simpson = (h/3)*(f(a) + 4*oddsum + 2*evensum +f(b));
fprintf ('Area under curve by simpson 1/3rd rule= %.6f\n',simpson);
%K19-0325
%K19-1310
%K19-0151
%K19-1418