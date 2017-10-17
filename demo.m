% Flávio Omar Losada, Jader Antonio Tomelin, Leonardo Fiedler, Matheus Eduardo Hoeltgebaum Pereira, Pâmela Carolina Vieira, Roberto Luiz Debarba

%Conjuntos de dados
x1 = [10;8;13;9;11;14;6;4;12;7;5];
y1 = [8.04;6.95;7.58;8.81;8.33;9.96;7.24;4.26;10.84;4.82;5.68];

x2 = [10;8;13;9;11;14;6;4;12;7;5];
y2 = [9.14;8.14;8.47;8.77;9.26;8.10;6.13;3.10;9.13;7.26;4.74];

x3 = [8;8;8;8;8;8;8;8;8;8;19];
y3 = [6.58;5.76;7.71;8.84;8.47;7.04;5.25;5.56;7.91;6.89;12.50];

%Calcula e exibe o primeiro grafico, referente aos conjuntos x1 e y1
retorno = correlacao(x1, y1); %Calcula a correlacao
[b0, b1, reg01] = regressao(x1, y1); %Calcula a regressao

%Coloca os pontos no plano
scatter(x1, y1);
hold on;
%Adiciona o titulo com as informacoes de regressao e correlacao.
title(["Correlacao: ", num2str(retorno), ". Regressao - b0: ", num2str(b0(1)), ". b1: " , num2str(b1(1))]);

hold on;
%Adiciona a linha, com base na regressao
plot(x1, reg01);
%Utiliza a funcao figure para criar uma imagem e exibir o proximo em um grafico separado
figure;

%Calcula e exibe o segundo grafico, referente aos conjuntos x2 e y2
%Internamente, executa o mesmo procedimento do anterior
retorno = correlacao(x2, y2);
[b0, b1, reg01] = regressao(x2, y2);
scatter(x2, y2);
hold on;
title(["Correlacao: ", num2str(retorno), ". Regressao - b0: ", num2str(b0(1)), ". b1: " , num2str(b1(1))]);
hold on;
plot(x2, reg01);
figure;

%Calcula e exibe o terceiro grafico, referente aos conjuntos x3 e y3
%Internamente, executa o mesmo procedimento dos anteriores
retorno = correlacao(x3, y3);
[b0, b1, reg01] = regressao(x3, y3);
scatter(x3, y3);
hold on;
title(["Correlacao: ", num2str(retorno), ". Regressao - b0: ", num2str(b0(1)), ". b1: " , num2str(b1(1))]);
hold on;
plot(x3, reg01);

%3) Qual dos datasets nao e apropriado para regressao linear?  
%R.: Os datasets [x2, y2] e [x3, y3] nao sao apropriados para o caso.
 