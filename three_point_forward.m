%numerical differenciation
%3 point forward end point
clc
n=input('Enter number of values: ');
arrx=[1:100];
func=[1:100];
h=input('Enter Height: ');
for i=1:n
    fprintf('Enter x(%d)',i);
    arrx(i)=input(':');
    fprintf('Enter y(%d)',i);
    func(i)=input(':');
end

for i=1:n
    fprintf('\n%.2f,\t x =%.3f,\t y=%.7f\n',i,arrx(i),func(i));
end
no=input('\nEnter the number from first col to get answer: ');
forward=(+4*func(no+1)-func(no+2)-3*func(no))/(2*h);%3 point forward
fprintf('\n\nAnswer using 3 point endpoint (forward method): %.4f',forward);
%K19-0325
%K19-1310
%K19-0151
%K19-1418