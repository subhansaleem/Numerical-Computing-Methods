%divided_backward method
function dividedbackward()
    clc
    A=input('Enter the value of x and y as matrix: i.e [1.1,1.2,1.3,1.4,1.5; 4,8,12,16,20]');%before comma value of x and after comma value of y
    n=length(A);
    B=zeros(n);
    B(1,:)=A(2,:);
    a=1;
    for i=2:n
        for j=n:-1:i
            B(i,j)=(B(i-1,j)-B(i-1,j-1))/(A(1,j)-A(1,j-a));
        end
        a=a+1;
    end
    B=B'
    x=input('Put the value of x to find y: ');
    y=B(n,1);
    a=n;
    for i=2:n
        prd=B(n,i);
        for j=n:-1:a
            prd=prd*(x-A(1,j));
        end
        y=y+prd;
        a=a-1;
    end
    fprintf('The value of y at x = %d is %.7f',x,y);
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418