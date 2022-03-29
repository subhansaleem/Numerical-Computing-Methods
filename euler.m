%euler method
function euler()
    clc
    f=input('Enter Function like {@(x,y)0.2*x*y} : ');
    x0=input('Enter initial value of x i.e. x0: ');
    xn=input('Enter the final value of x: ');
    y0=input('Enter initial value of y i.e. y0: ');
    h=input('Enter the step length h: ');
     fprintf('\n x        y ');
    while x0<=xn
        fprintf('\n%4.7f  %4.7f ',x0,y0);
        y1=f(x0,y0);
        y1=y0+(h*y1);
        x1=x0+h;
        x0=x1;
        y0=y1;  
    end
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418