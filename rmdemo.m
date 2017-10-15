%function retorno = rmdemo()

  %a) Carrega os dados
  file = load('Dados\data.mat');
  data = file.data;
  
  %Quantidade de casas
  count = size(data)(1);
  
  %b) Monta as matrizes
  X = ones(count,3);
  X(:, 2) = data(:, 1);
  X(:, 3) = data(:, 2);
  y = data(:, 3);
  
  %c) Verifica a correlacao e regressao
  %Regressao
  xReg = X(1:count, 2);
  tamCasaReg = regressao(xReg, y);
  xReg = X(1:count, 3);
  quartoReg = regressao(xReg, y);
  
  %Correlacao
  xCor = X(1:count, 2);
  tamCasaCor = correlacao(xCor, y);
  xCor = X(1:count, 3);
  quartoCor = correlacao(xCor, y);
  
  %d) Monta o grafico de dispersao
  scatter3(X(:, 2), X(:, 3), y);
  hold on;
  
  %Calcula a regressao multipla
  ret = regmultipla(y, X);
  A = X* ret;
  
  %e) Traca a linha de regressao
  plot3(X(:, 2), X(:, 3), A);
  hold on;
  
  %f) Mostra os coeficientes de correlacao
  title(["Correlacao tamanho da casa/preco: ", num2str(tamCasaCor), ". Correlacao numero de quartos/preco: ", num2str(quartoCor)]);
  
  %g) Calcular o preco da casa com 1650 metros quadrados e 3 quartos
  
%end