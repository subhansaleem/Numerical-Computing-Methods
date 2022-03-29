%divided_forward method
function dividedforward()
    clc
    A=input('Enter the values of x and y as matrix: [1.1,1.2,1.3,1.4,1.5; 4,8,12,16,20]');%before comma value of x and after comma value of y
    n=length(A);
    B=zeros(n);
    B(1,:)=A(2,:);
    a=1;
    for i=1:n-1
        for j=1:n-i
        B(i+1,j)=(B(i,j+1)-B(i,j))/(A(1,j+a)-A(1,j));
        end
        a=a+1;
    end
    B=B'
    x=input('Enter the value of x to find y :');
    y=B(1,1);
    for i=2:n
        prd=B(1,i);
        for j=2:i
            prd=prd*(x-A(1,j-1));
        end
        y=y+prd;
    end
    fprintf('the interpolated value of x = %d is %.7f ',x,y);
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418