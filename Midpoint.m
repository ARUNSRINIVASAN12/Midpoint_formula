syms x
f = 1/x;%function
n = 6;%intervals
a = 1;%lower limit
b = 3;%upper limit
h = (b-a)/n;
p = [];
mid = [];
q = [];
sum = 0;
for i = 0:n
    p = cat(2,p,a + i*h);
end
fprintf("Xi:\n")
disp(p)
for i = 1:n
    mid = cat(2,mid,(p(i)+p(i+1))/2);
end
fprintf("Mi:\n")
disp(mid)
for i = 1:n
    q = cat(2,q,subs(f,x,mid(i)));
    sum = sum + subs(f,x,mid(i));
end
fprintf("F(Mi):\n")
disp(q)
fprintf("h*(sum of F(Mi): %s*(%s ",rats(h),rats(q(1)))
for j = 2:n
    fprintf("+ %s ",rats(q(j)))
end
fprintf(")\n")
fprintf("%.4f\n",h*sum)