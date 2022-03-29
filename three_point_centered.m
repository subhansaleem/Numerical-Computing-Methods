%numerical differenciation
%3 point Mid point
clc
n=input('Enter number of values: ');
arrx=[1:100];
func=[1:100];
h=input('Enter Height: ');
for i=1:n
    arrx(i)=input('Enter x(): ');
    func(i)=input('Enter y(): ');
end

for i=1:n
    fprintf('%.2f, x =%.3f, y=%.7f\n',i,arrx(i),func(i));
end
no=input('Enter the number from first col to get answer: ');
center=(func(no+1)-func(no-1))/(2*h);%3 point center
fprintf('Answer using 3 point endpoint (forward method): %.7f',center);
%K19-0325
%K19-1310
%K19-0151
%K19-1418