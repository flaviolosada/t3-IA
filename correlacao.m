% Flávio Omar Losada, Jader Antonio Tomelin, Leonardo Fiedler, Matheus Eduardo Hoeltgebaum Pereira, Pâmela Carolina Vieira, Roberto Luiz Debarba

function retorno = correlacao(x, y)
  mediaX = mean(x);
  mediaY = mean(y);
  
  subX = x - mediaX;
  subY = y - mediaY;
  dividendoXY = sum(subX .* subY);
  
  powX = sum(subX .^ 2);
  powY = sum(subY .^ 2);
  
  divisorXY = sqrt(powX .* powY);
  
  retorno = dividendoXY / divisorXY;
  
  %retorno = sum((x-mediaX).*(y - mediaY))/sqrt(sum((x-mediaX).^2) .* sum((y-mediaY).^2));
end