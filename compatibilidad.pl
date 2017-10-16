% Signo Zodiacal.

esLeo('Thrasher').
esLeo('Jairo'). esLibra('Nestor'). esLibra('Isabell').
esAcuario('Gabriela'). esAcuario('Stephania'). esAcuario('Juan').

% Género Musical.

esMetal('Thrasher').
esJazz('Jairo'). esRanchero('Nestor').
esRanchero('Isabell'). esJazz('Gabriela'). esJazz('Stephania'). esMetal('Juan').

% Color Favorito.

esVerde('Thrasher').
esAzul('Jairo'). esRojo('Nestor'). esRojo('Isabell').
esAzul('Gabriela'). esVerde('Stephania'). esAzul('Juan').


esCompatible(A, B) :- (esLeo(A), esLibra(B), esMetal(A), esRanchero(B)) ; (esLeo(B), esLibra(A), esMetal(B), esRanchero(A)).
esCompatible(A, B) :- (esAcuario(A), esLibra(B), esAzul(A), esRojo(B)); (esAcuario(B), esLibra(A), esAzul(B), esRojo(A)).
esCompatible(A, B) :- (esRanchero(A), esJazz(B), esVerde(A), esRojo(B)); (esRanchero(B), esJazz(A), esVerde(B), esRojo(A)).
esCompatible(A, B) :- (esRanchero(A), esJazz(B), esLibra(A), esAcuario(B)); (esRanchero(B), esJazz(A), esLibra(B), esAcuario(A)).
esCompatible(A, B) :- (esAzul(A), esVerde(B), esMetal(A), esJazz(B)); (esAzul(B), esVerde(A), esMetal(B), esJazz(A)).
esCompatible(A, B) :- (esMetal(A), esRanchero(B), esLeo(A), esAcuario(B)); (esMetal(B), esAzul(A), esLeo(B), esAcuario(A)).

