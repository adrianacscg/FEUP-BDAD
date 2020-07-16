.mode columns 
.headers ON

-- Caminhos com middle (dois caminhos juntos) cuja distância total > 120

SELECT L1.name AS start, L2.name AS end, P1.distance + P2.distance AS totalDistance
FROM Path P1 INNER JOIN Path P2
ON P1.idEnd = P2.idStart
INNER JOIN Local L1 
ON L1.idLocal = P1.idStart
INNER JOIN Local L2
ON L2.idLocal = p2.idEnd
WHERE P1.distance + P2.distance > 120;