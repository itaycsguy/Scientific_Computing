A = single([21.0 67.0 88.0 73.0;76.0 63.0 7.0 20.0;0.0 85.0 56.0 54.0;19.3 43.0 30.2 29.4]);
b = single([141.0 109.0 218.0 93.7]');
[L,U] = lu(A);
x = U\(L\b);
r = single(b-A*double(x));
z = U\(L\r);
prev_x = x;
x = x + z;
fprintf("residual = ");
disp(r');
while ne(prev_x,x)
    r = single(b-A*double(x));
    fprintf("residual = ");
    disp(r');
    z = U\(L\r);
    prev_x = x;
    x = x + z;
end