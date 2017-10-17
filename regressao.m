% Flávio Omar Losada, Jader Antonio Tomelin, Leonardo Fiedler, Matheus Eduardo Hoeltgebaum Pereira, Pâmela Carolina Vieira, Roberto Luiz Debarba

function [b0, b1, retorno] = regressao(x, y)
  subX = x - mean(x);
  subY = y - mean(y);
  
  sumXY = sum(subX.*subY);
  divisorXY = sum(subX.^2);
  
  b1 = sumXY / divisorXY;
  
  b0 = mean(y) - b1.*mean(x);
  
  retorno = b0 + b1.*x;
end