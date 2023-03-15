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
   tentativas <- 2
   repita
      escreval(" ","1 2 3 4 5"," ")
      escreval("----------")
      para linha de 1 ate 5 faca
         para coluna de 1 ate 5 faca
            campo[linha,coluna] <- 0
            escreva ("", campo[linha,coluna], "")
         fimpara
         escreval(" |",linha, "")
         escreval(" ")
      fimpara

      escreval(" ")
      
      campo[1,2] <- 1
      escreva("Digite a Linha:")
      leia(resposta)
      linha <- resposta
      escreva("Digite a Coluna:")
      leia(resposta)
      coluna <- resposta
      
      se campo[linha,coluna] = 1 entao
         escreval("BOOM")
      senao
         escreval ("ESPAÇO LIVRE!!")
         escreval("")
         tentativas <- tentativas +1
      fimse
      
   ate (campo[linha,coluna] = 1) ou (tentativas = 26)

   se (campo[linha,coluna] = 1) entao
      escreval("Perdeu")
   senao
      escreval ("Parabéns você venceu")
   fimse



Fimalgoritmo
