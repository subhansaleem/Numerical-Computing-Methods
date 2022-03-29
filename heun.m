%heun method
function heun()
    clc
    f=input('Enter Function like {@(t,y)0.2*t*y} : ');
    a = input('Enter a:  ');
    b = input('Enter b:  ');
    in = input('Enter the initial condition:  ');
    n = input('Enter n: ');
    h = (b-a)/n;                                               
    t=[a zeros(1,n)];   
    w=[in zeros(1,n)];
    for i = 1:n+1
      t(i+1)=t(i)+h;
      wprime=w(i)+(h/3)*f(t(i),w(i));
      w(i+1)=w(i)+(h/4)*(f(t(i),w(i))+3*f(t(i)+(2*h/3), w(i)+(2*h/3)*f(t(i)+h/3, wprime)));
      fprintf('%5.4f  %11.8f\n', t(i), w(i));
    end
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418