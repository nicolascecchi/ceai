% clase 4 ej1N = 10;mu = 0;%  varianza de Xv = 0.1;% varianza del ruidovi  = 0.1;n_vector = 1:N;% senialX = sqrt(v)*randn(N,1) + mu;% ruidoW = sqrt(vi)*randn(N,1);% proceso contaminado por ruidoY = X + W;plot(n_vector,Y)YiVi_sum = 0;% suma de Yi/vifor i =1:N    YiVi_sum = YiVi_sum + Y(i)/vi;endfor  Vi_sum = 0;% suma de 1/vifor i =1:N    Vi_sum = Vi_sum + 1/vi;endfor%  estimador de cuadrados minimos linealX_lls = ((mu/v) + YiVi_sum) / (1/v  + Vi_sum)hold onplot(n_vector,X_lls,'o+');hold off