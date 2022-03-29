%Lagrange method
function lagrange()
    clc
    n=input ('Total number of values: ');
    for i=1:n;
        fprintf('\nX%d= ',i);
        x(i)=input(' ');
        fprintf('\nY%d= ',i);
        y(i)=input(' ');
    end
    a=input('Enter the value of x to determine y: ');
    b=0;
    for i=1:n
        sum=y(i);
        for j=1:n
            if (j == i)
            else
                sum= sum*(a-x(j))/(x(i)-x(j));
            end
        end
        b=b + sum;
    end
    fprintf('\nFor the value of %.2f, the value of y is %.3f',a,b);
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418