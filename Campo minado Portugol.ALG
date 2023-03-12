Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Aline
// Descrição   : Fazer o jogo campo minado
// Autor(a)    : Léo Masago e Bruno Lima
// Data atual  : 10/03/2023
Var
x : vetor [0..9] de caracter
z : vetor [0..1] de inteiro
y : caracter
tentativas : inteiro

Inicio
y <- "bomba"
x[1] <- y
tentativas <- 0

repita
  escreva ("Digite um número entre 0 e 9: ")
  leia (z[1])

 se (x[z[1]] = y) entao
    escreval ("BOOM!")
 senao
    escreval ("Continue...")
    tentativas <- tentativas + 1
 fimse

ate (x[z[1]] = y) ou (tentativas = 7)

se (x[z[1]] = y) entao
  escreval ("Você perdeu o jogo.")
senao
  escreval ("Parabéns! Você venceu o jogo")
fimse

Fimalgoritmo