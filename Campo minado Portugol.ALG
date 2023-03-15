Algoritmo "Campo Minado"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Aline
// Descrição   : Fazer o jogo campo minado
// Autor(a)    : Léo Masago e Bruno Lima
// Data atual  : 10/03/2023
Var
campo:vetor[1..5, 1..5] de inteiro
linha, coluna, resposta: inteiro
tentativas : inteiro

Inicio
campo[1,2] <- 1
tentativas <- 2

repita
escreva("Digite a Linha:")
leia(resposta)
linha <- resposta
escreva("Digite a Coluna:")
leia(resposta)
coluna <- resposta

se campo[linha,coluna] = 1 entao
escreval("BOOM")
senao
escreval ("Espaço Livre")
tentativas <- tentativas +1
fimse

ate (campo[linha,coluna] = 1) ou (tentativas = 26)

se (campo[linha,coluna] = 1) entao
escreval("Perdeu")
senao
escreval ("Parabéns você venceu")
fimse



Fimalgoritmo
