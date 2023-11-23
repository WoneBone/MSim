M = 2500;
u = 50;
g = 9.8;
A = 8;
b = 3.5e-4;
Q = 80;
h = zeros(1,M);
t = (1:M) - 1;
stop = ((10^-3*Q)/(u*b*sqrt(2*g)))^2
h1= [0 0.25 0.5 0.75 1 1.25 1.5];
s=0;

hold on;
for l = 1:7
    h(1)=h1(l);
    for k = 1:(M-1)
        h(k+1) = -u*(b*sqrt(2*g)/A)*(sqrt(h(k))) + (Q*10^-3)/A + h(k);
        if (abs(h(k+1) - stop) < 0.0001) && (s == 0)
            s = k+1
            break
        end
    end
   g1 = plot(t(1:s),h(1:s));
   set(g1,'LineWidth',1.5);
   s=0;
end

h(1) = stop;
for k = 1:(M-1)
    h(k+1) = -u*(b*sqrt(2*g)/A)*(sqrt(h(k))) + (Q*10^-3)/A + h(k);
end


g1 = plot(t(1:M-1),h(1:M-1), '--');
set(g1,'LineWidth',1.5);
