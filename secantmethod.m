%secant method
function secantmethod1()
    clc
    format long
    syms x
    check=false;
    str=input('Enter equation eg "3*x - exp(x)": ');
    a=input('Enter value of a :');
    b=input('Enter value of b :');
    tol=input('Enter the tolerance value :');
    x=a;
    temp1=subs(str);
    x=b;
    temp2=subs(str);
    if temp1*temp2 <0
        fprintf("Solution exists\n")
        check=true;
    else
        fprintf("No solution exists\n")
    end
    
    if check == true
        n=0;
        err=0;
        po=a;
        p1=b;
    
        fprintf("\t\t      %s \t\t\t  %s  \t\t\t  %s\n\n",'n','pn','err')    
        z=[n;po;err];
        z=double(z);
        disp(z')
    
        n=n+1;
    
        z=[n;p1;err];
        z=double(z);
        disp(z')
    
        while true
            n=n+1;
            x=p1;
            fpnmin1=subs(str);
            x=po;
            fpnmin2=subs(str);
            pn = (p1 - (((fpnmin1)*(p1-po))/((fpnmin1)-(fpnmin2))));
            
            err = pn - p1;
            if (sign(err)==-1)
                err=err*-1;
            end
            z=[n;pn;err];
            z=double(z);
            disp(z')
            if err <= tol
            break
            end
            po=p1;
            p1=pn;     
        end
    end
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418