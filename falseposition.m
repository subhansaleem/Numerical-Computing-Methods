%false position method / Regulai false
function falsemethod()
    clc
    format long
    syms x
    check=false;
    eq=input('Enter an equation eg "-x^3 - cos(x)": ');
    a=input('Enter the value of a :');
    b=input('Enter the value of b :');
    tol=input('Enter the tolerance value :');
    x=a;
    temp1=subs(eq);
    x=b;
    temp2=subs(eq);
    if temp1*temp2 <0
        fprintf("Solution exists\n")
        check=true;
    else
        fprintf("No solution exists\n")
    end
    if check == true
        n=1;
        err=0;
        fprintf("\t\t%s \t\t  %s  \t\t  %s     \t\t %s  \t\t  %s  \t\t  %s  \t\t  %s   \t\t  %s\n\n",'n','a','b','f(a)','f(b)','c','f(c)','err');
        while true
    
            x=a;
            fa=subs(eq);
            x=b;
            fb=subs(eq);
      
            c=((((a)*(fb))-((b)*(fa)))/((fb)-(fa)));
            x=c;
            fc=subs(eq);
        
            if fc==0
                break
            end
            if n>=2
                err = fc - cprevious;
                if (sign(err)==-1)
                    err=err*-1;
                end
            end
            z=[n;a;b;fa;fb;c;fc;err];
            z=double(z);
            disp(z');
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