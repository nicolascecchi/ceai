% clase 4 ej 4pkg load statisticsrand('seed',1234);% numero de realizaciones de la v.a.N = 100;% simulaciones de la variable independienten = 1000;% variable independientex = linspace(-10,10,n);% constante de filtrado (y dispersion de la Gaussiana)h = 1;% proceso aleatorio% GaussianoX = randn(N,1);% uniforme%X = rand(N,1);% exponencial, lambda=1%X=exppdf(x,1);% Rayleigh, sigma=1%x = x(round(length(x)/2 + 1):end);%X = raylpdf(x,1);%  pdf estimadap = zeros(size(x));% para cada muestrafor i=1:N  % para cada variable independiente  for j=1:length(x)        % kernel function, Gaussian        K = (1/sqrt(2*pi))*exp(-(1/2)*((X(i)-x(j))/h)^2);        % estimation of pdf        p(j) = p(j) + (1/(N*h)) * K;
    endforendfor      plot(x,p)
