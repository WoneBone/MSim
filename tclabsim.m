function y = tclabsim(t, x0, u, p)
    t = t;
    Ta = x0 + 272.15;
    u =u;
    U = p(1);
    alfa = p(2);
    tao = p(3);
    epsilon = 0.9;
    Cp = 500;
    A = 1e-3;
    m = 0.004;
    Boltzman = 5.67e-8;
    x = sim('TCLab_model', 'SrcWorkspace','current');
    y = x.Ts - 272.15;
end