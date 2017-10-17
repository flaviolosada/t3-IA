% Flávio Omar Losada, Jader Antonio Tomelin, Leonardo Fiedler, Matheus Eduardo Hoeltgebaum Pereira, Pâmela Carolina Vieira, Roberto Luiz Debarba

  %a) Carrega os dados
  file = load('Dados\data_preg.mat');
  data = file.data;
  count = size(data)(1);
  
  X = ones(count,2);
  X(:, 2) = data(:, 1);
  y = data(:, 2);
  
  %b) Monta o grafico de dispersao
  scatter(X(:, 2), y);
  
  %c) Traca a linha de regressao (N = 1)
  %Retorna matriz [valor1(b1) valor2(b0)]
  reg = polyfit(X(:,2), y, 1);
  
  %Calcula a linha de regressao
  linhaReg1 = polyval(reg, X);
  
  hold on;
  plot(X, linhaReg1, 'r');
  
  %d) Traca a linha de regressao (N = 2)
  %Retorna matriz [valor1(b2) valor2(b1) valor3(b0)]
  reg = polyfit(X(:,2), y, 2);
  
  %Calcula a linha de regressao
  linhaReg2 = polyval(reg, X);
  
  hold on;
  plot(X, linhaReg2, 'g');
  
  %e) Traca a linha de regressao (N = 3)
  %Retorna matriz [valor1(b3) valor2(b2) valor3(b1) valor4(b0)]
  reg = polyfit(X(:,2), y, 3);
  
  %Calcula a linha de regressao
  linhaReg3 = polyval(reg, X);
  
  hold on;
  plot(X, linhaReg3, 'k');
  
  %f) Traca a linha de regressao (N = 8)
  reg = polyfit(X(:,2), y, 8);
  
  %Calcula a linha de regressao
  linhaReg8 = polyval(reg, X);
  
  hold on;
  plot(X, linhaReg8, 'y');
  
  %g) Calcula EQM (Erro quadratico medio) das linhas de regressao
  eqmLinha1 = (sum((linhaReg1 - mean(linhaReg1)).^2)) / size(linhaReg1, 1);
  eqmLinha2 = (sum((linhaReg2 - mean(linhaReg2)).^2)) / size(linhaReg2, 1);
  eqmLinha3 = (sum((linhaReg3 - mean(linhaReg3)).^2)) / size(linhaReg3, 1);
  eqmLinha8 = (sum((linhaReg8 - mean(linhaReg8)).^2)) / size(linhaReg8, 1);
  
  %h) Montar dados de teste e treinamento
  %Mistura os dados aleatoriamente
  randomData = data(randperm(length(data)));
  qtdLinhas = length(randomData);
  qtdDataTeste = round(qtdLinhas * 0.1);
  dataTeste = ones(qtdDataTeste,2);
  yTeste = ones(qtdDataTeste);
  dataTreinamento = ones(qtdLinhas-qtdDataTeste,2);
  yTreinamento = ones(count-qtdDataTeste);
  
  for i=1:qtdDataTeste
    dataTeste(i,2) = randomData(i);
    yTeste(i) = randomData(i);
  end
   
  index = qtdDataTeste+1;
  for i=1:length(dataTreinamento)
    dataTreinamento(i,2) = randomData(index);
    yTreinamento(i) = randomData(index);
    index = index + 1;
  end
  
  %i) Monta linhas de regressao apenas para dados de treinamento
  %c - Traca a linha de regressao (N = 1)
  %Retorna matriz [valor1(b1) valor2(b0)]
  Xtreinamento = ones(size(dataTreinamento),2);
  Xtreinamento(:, 2) = dataTreinamento(:, 2);
  ytreinamento = dataTreinamento(:, 2);
  regTreinamento = polyfit(Xtreinamento(:,2), ytreinamento, 1);
  
  %Calcula a linha de regressao
  linhaReg1Treinamento = polyval(regTreinamento, Xtreinamento);
  
  hold on;
  plot(Xtreinamento, linhaReg1Treinamento, 'b');
  
  %d - Traca a linha de regressao (N = 2)
  %Retorna matriz [valor1(b2) valor2(b1) valor3(b0)]
  regTreinamento = polyfit(Xtreinamento(:,2), ytreinamento, 2);
  
  %Calcula a linha de regressao
  linhaReg2Treinamento = polyval(regTreinamento, Xtreinamento);
  
  hold on;
  plot(Xtreinamento, linhaReg2Treinamento, 'g');
  
  %e - Traca a linha de regressao (N = 3)
  %Retorna matriz [valor1(b3) valor2(b2) valor3(b1) valor4(b0)]
  regTreinamento = polyfit(Xtreinamento(:,2), ytreinamento, 3);
  
  %Calcula a linha de regressao
  linhaReg3Treinamento = polyval(regTreinamento, Xtreinamento);
  
  hold on;
  plot(Xtreinamento, linhaReg3Treinamento, 'k');
  
  %f - Traca a linha de regressao (N = 8)
  regTreinamento = polyfit(Xtreinamento(:,2), ytreinamento, 8);
  
  %Calcula a linha de regressao
  linhaReg8Treinamento = polyval(regTreinamento, Xtreinamento);
  
  hold on;
  plot(Xtreinamento, linhaReg8Treinamento, 'y');
  
  %j) Calcula EQM apenas para os dados de teste
  %g) Calcula EQM (Erro quadratico medio) das linhas de regressao
  eqmLinha1Teste = (sum((linhaReg1Treinamento - mean(linhaReg1Treinamento)).^2)) / size(linhaReg1Treinamento, 1);
  eqmLinha2Teste = (sum((linhaReg2Treinamento - mean(linhaReg2Treinamento)).^2)) / size(linhaReg2Treinamento, 1);
  eqmLinha3Teste = (sum((linhaReg3Treinamento - mean(linhaReg3Treinamento)).^2)) / size(linhaReg3Treinamento, 1);
  eqmLinha8Teste = (sum((linhaReg8Treinamento - mean(linhaReg8Treinamento)).^2)) / size(linhaReg8Treinamento, 1);
  
  %k) MÃ©todo mais preciso é método que separa dados para treinamento e para testes (Regressão Quadrática)
  