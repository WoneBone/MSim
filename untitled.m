load('openloop_data_1.mat');
load('Variaveis.mat');


MAX= 50; %TAMANHO DO VETOR%
U = linspace(4.38381, 8.70219, MAX);
alpha = linspace(0.0067469, 0.0133931, MAX);
tau = linspace(6.99413, 13.88387, MAX);
J=zeros(MAX,MAX);
p=[0,0,0];
y_sim =zeros(1,500);

for i=1:MAX
    for j=1:MAX
   
        p = [U(i) alpha(j) tau_opt];

            
           y_sim = tclabsim(t,x0,u,p_opt);
                

        for k=1:500

            J(i,j) = J(i,j) + (y_sim(1,k) - y(1,k))^2;

        end

    end
end