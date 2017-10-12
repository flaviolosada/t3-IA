%function retorno = rmdemo()

  file = load('Dados\data.mat');
  data = file.data;
  sFile = size(data)(1);
  X = ones(sFile,3);
  X(:, 2) = data(:, 1);
  X(:, 3) = data(:, 2);
  y = data(:, 3);
  
  %disp(X);
  %return;
  ret = regmultipla(y, X);
  A = X* ret;
  disp(A);

  
  %c
  %xReg = X(1:sFile, 2);
  %tamCasaReg = regressao(xReg, y);
  
  %xReg = X(1:sFile, 3);
  %quartoReg = regressao(xReg, y);
  
  %xCor = X(1:sFile, 2);
  %tamCasaCor = correlacao(xCor, y);
  
  %xCor = X(1:sFile, 3);
  %quartoCor = correlacao(xCor, y);
  
  scatter3(X(:, 2), X(:, 3), y);
  
  hold on;
  plot3(X(:, 2), X(:, 3), A);
  
  %x = X(1:sFile, 1);
  %y = X(1:sFile, 2);
  %z = X(1:sFile, 3);
  %scatter3(x, y, z);
  
%end