M = 5000;
u = 50 + zeros(1,M);
g = 9.8;
A = 8;
b = 3.5e-4;
Q = 80;
h = zeros(1,M);
t = (1:M) - 1;
stop = ((10^-3*Q)/(u(1)*b*sqrt(2*g)))^2
s=0;

for k = 1:(M-1)
    h(k+1) = -u(k)*(b*sqrt(2*g)/A)*(sqrt(h(k))) + (Q*10^-3)/A + h(k);
    if (abs(h(k+1) - stop) < 0.0001) && (s == 0)
        s = k+2
        u(s:M) = 55;
    end
end

subplot(2,1,1);
g1 = plot(t,h);
set(g1,'LineWidth',1.5);
subplot(2,1,2);
g2 = plot(t, u);
axis([0 M 0 100]);
set(g2,'LineWidth',1.5);
