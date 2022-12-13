function f(x:real):real;
begin
f:=2*x*x*x-2*x*x+2*x+2;                  
end;
function f1(x:real):real;
begin
f1:=x*(8*x*x*x-8*x*x+4*x+4)/4;
end;
var a,b:real;
    n:integer;
begin
repeat
a:=readReal('Введите левую границу интервала от -5 до 0 a=');
until (a>=-5)and(a<=0);
repeat
b:=readReal('Введите правую границу интервала от 0 до 5 b=');
until (b>=0)and(b>a)and(b<=5);
repeat
n:=readInteger('Введите число разбиений от 20 до 1000 n=');
until (n>=20)and(n<=1000);
var h:=(b-a)/n;
var s:=(f(a)+f(b))/2;
for var i:=1 to n-1 do
s:=s+f(a+i*h);
s:=s*h;
Writeln('S=',s:0:5);
var y:=f1(b)-f1(a);
Writeln('Аналитическое значение=',y:0:5);            
Writeln('Абсолютная погрешность=',abs(y-s):0:5);
Writeln('Относительная погрешность=',abs(y-s)/y)
end.