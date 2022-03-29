%4rk method
function rk()
    y=[1:100];
    clc
    f = input('Enter function eg "@(x,y) (x-y)/2": ');
    t0 = input('Enter initial value of independent variable : ');
    y0 = input('Enter initial value of dependent variable : ');
    h = input('Enter step size : ');
    tn = input('Enter maximum value of independent : ');

    n = (tn - t0)/h;
    t(1) =  t0; y(1)= y0;
    for i=1:n
        t(i+1) = t0 + i*h;
        k1=h*f(t(i),y(i));
        k2=h*f(t(i)+(h/2),y(i)+(k1/2));
        k3=h*f(t(i)+(h/2),y(i)+(k2/2));
        k4=h*f(t(i+1),y(i)+k3);
        y(i+1)=y(i)+(( (1/6)* (k1 + (2*k2) + 2*k3 +k4)));
        fprintf('y(%.2f) = %.7f\n', t(i+1), y(i+1));
    end
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418