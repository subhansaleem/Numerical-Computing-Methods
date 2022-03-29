%Bisection method
function bisection()
    clc
    format long
    syms x
    check=false;
    eq=input('Enter an equation eg  "x^(1/2) - cos(x)": ');
    a=input('Enter value of a :');
    b=input('Enter value of b :');
    tol=input('Enter the tolerance value :');
    tol=double(tol);
    x=a;
    tmp1=subs(eq);
    x=b;
    tmp2=subs(eq);
    if tmp1*tmp2 <0
        check=true;
        fprintf("Solution exists\n")
    else
        fprintf("No solution exists\n")
    end
   
    if check == true
        n=1;
        err=0;
        
        fprintf("   \t\t%s         \t\t        %s  \t\t  %s            \t\t  %s            \t\t  %s            \t\t  %s\n\n",'n','a','b','c','f(c)','error')
    
        while true
            c=((a+b)/2);
            x=c;
            fc=subs(eq);
            if fc ==0
                break
            end
            x=a;
            fa=subs(eq);
            x=b;
            fb=subs(eq);
        
            if n>=2
                err = fc - cprevious;
                if (sign(err)==-1)
                    err=err*-1;
                end
            end
            z=[n;a;b;c;fc;err];
            z=double(z);
            disp(z')
            if n>=2
                if err<= tol
                    break
                end
            end
            if ((sign(fc))==(sign(fa)))
                a=c;
            elseif ((sign(fc))==(sign(fb)))
                b=c;
            end
            cprevious=fc;
            n=n+1;
        end
    end
end
%K19-0325
%K19-1310
%K19-0151
%K19-1418