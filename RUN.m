%Omega = (-R, R)^2

R = 1;
Nx = 101;
dx = 2*R/(Nx - 1);
x = -R:dx:R;
[X, Y] = meshgrid(x); % define the pair (x_i, y_j) in Omega

a = zeros(size(X));
b = zeros(size(X));
c = zeros(size(X));
f = -ones(size(X));
g = sin(X.^2 + 2*pi*Y.^2);
u = Elliptic_Dir(X, Y, a, b, c, f, g);

figure;
surf(u,'EdgeColor','none');
colorbar;