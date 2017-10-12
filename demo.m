%correlacao = medir a intensidade de associacao de duas variaveis. (Relacao Linear). Foca na associacao.
%regressao  = prever valores de uma variavel, dado os valores de outras. Designada par ajudar a fazer previsoes. 
x1 = [10;8;13;9;11;14;6;4;12;7;5];
y1 = [8.04;6.95;7.58;8.81;8.33;9.96;7.24;4.26;10.84;4.82;5.68];

x2 = [10;8;13;9;11;14;6;4;12;7;5];
y2 = [9.14;8.14;8.47;8.77;9.26;8.10;6.13;3.10;9.13;7.26;4.74];

x3 = [8;8;8;8;8;8;8;8;8;8;19];
y3 = [6.58;5.76;7.71;8.84;8.47;7.04;5.25;5.56;7.91;6.89;12.50];

%1
retorno = correlacao(x1, y1);
reg01 = regressao(x1, y1);
TXT = sprintf("Correlacao do 1 e: %d", retorno);
disp(TXT);

TXT = sprintf("Regressao do 1 e: ");
disp(TXT);
disp(reg01);

scatter(x1, y1);
hold on;
plot(x1, reg01);
figure;

%2
retorno = correlacao(x2, y2);
reg01 = regressao(x2, y2);
scatter(x2, y2);
TXT = sprintf("Correlacao do 2 e: %d", retorno);
disp(TXT);

TXT = sprintf("Regressao do 2 e: ");
disp(TXT);
disp(reg01);

hold on;
plot(x2, reg01);
figure;

%3
retorno = correlacao(x3, y3);
reg01 = regressao(x3, y3);
TXT = sprintf("Correlacao do 3 e: %d", retorno);
disp(TXT);

TXT = sprintf("Regressao do 3 e: ");
disp(TXT);
disp(reg01);
scatter(x3, y3);
hold on;
plot(x3, reg01);

%TODO: ver com professora sobre funcao glmfit que nao esta contida no Octave ainda.

%3) Qual dos datasets nao e apropriado para regressao linear?  
%R.: O dataset [x3, y3] e [x2, y2] nao sao apropriados para o caso.
 