.mode columns 
.headers ON

-- Caminhos com distância maior que 60

SELECT name
FROM Path P
WHERE P.distance > 60;