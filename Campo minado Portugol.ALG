Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Aline
// Descrição   : Fazer o jogo campo minado
// Autor(a)    : Léo Masago e Bruno Lima
// Data atual  : 10/03/2023
Var
x : vetor [0..25] de caracter
z : vetor [0..1] de inteiro
y, b : caracter
Inicio
 y <- "bomba"
 b <- "bomba perto
x[0] <- b
x[1] <- y
x[2] <- b
x[24] <- b
x[25] <- y
x[15] <- b
x[16] <- y
x[17] <- b
x[8] <- b
x[9] <- y
x[10] <- b
x[19] <- b
x[20] <- y
x[21] <- b

repita
escreva("Digite um numero:")
leia(z[1])
escreval(x[z[1]])
ate (x[z[1]] = x[1])
escreval("perdeu")





Fimalgoritmo