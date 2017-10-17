% Flávio Omar Losada, Jader Antonio Tomelin, Leonardo Fiedler, Matheus Eduardo Hoeltgebaum Pereira, Pâmela Carolina Vieira, Roberto Luiz Debarba

function retorno = regmultipla(y, X)

  %X1 = X(1:47, 2);
  %X2 = X(1:47, 3);

  %subX1 = X1 - mean(X1);
  %subX2 = X2 - mean(X2);
  %subY = y - mean(y);
  
  %numerb1 = (sum(subX2.^2) * sum(subX1.*subY)) - (sum(subX1.*subX2) * sum(subX2.*subY));
  %denomb1 = (sum(subX1.^2) * sum(subX2.^2)) - (sum(subX1.*subX2).^2);
  
  %numerb2 = (sum(subX1.^2) * sum(subX2.*subY)) - (sum(subX1.*subX2) * sum(subX1.*subY));
  %denomb2 = (sum(subX1.^2) * sum(subX2.^2)) - (sum(subX1.*subX2).^2);
  
  %b1 = numerb1 / denomb1;
  %b2 = numerb2 / denomb2;
  
  %b1 = ((X' * X).^-1) * X' * y;
  %b2 = ((X' * X).^-1) * X' * y;
  
  %b0 = mean(y) - b1.*mean(X1) - b2.*mean(X2);
  
  %retorno = b0 + b1.*X1 + b2.*X2;

  retorno = pinv(X' * X) * X' * y;
  %retorno = b;
end