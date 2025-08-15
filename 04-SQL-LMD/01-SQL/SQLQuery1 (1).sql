--LISTAR TDODOS LOS PEDIDOS , MOSTRANDO EL NUMERO DE PEDIDO,
--IMPORTE,NOMBRE Y LIMITEDE CREDITO DEL CLIENTE

select*
from Pedidos;


SELECT P.Num_Pedido,P.Importe,C.Empresa, C.Empresa
FROM Pedidos AS P
INNER JOIN 
Clientes AS C
ON C.Num_Cli=P.Cliente
ORDER BY Importe DESC


SELECT P.Num_Pedido,P.Importe,C.Empresa, C.Empresa
FROM Pedidos AS P
INNER JOIN 
Clientes AS C
ON C.Num_Cli=P.Cliente
WHERE Limite_Credito BETWEEN 25000 AND 50000
AND Empresa LIKE 'J%'
ORDER BY Importe DESC