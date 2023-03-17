Algoritmo "Campo Minado"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Aline Firmino Brito
// Descrição   : Fazer o Jogo campo Minado
// Autor(a)    : Léo Masago e Bruno Lima
// Data atual  : 17/03/2023
Var
   campo:vetor[1..5, 1..5] de inteiro
   linha, coluna, resposta: inteiro
   tentativas : inteiro

Inicio
   tentativas <- 2
   repita
      //Criação do campo na tela
      escreval(""," 1  2  3  4  5 "," ")
      escreval("- - - - - - - - ")
      para linha de 1 ate 5 faca
         para coluna de 1 ate 5 faca
            se campo [linha,coluna] <> 0 entao
               escreva (" ", campo[linha,coluna], " ")
            senao
               escreva (" 1 ")
            fimse
         fimpara
         escreval(" |",linha, "")
         escreval(" ")
      fimpara

      escreval(" ")


      escreva("Digite a Linha:")
      leia(linha)
      escreva("Digite a Coluna:")
      leia(coluna)

      //Quantidade e posição de bombas
      campo[1,2] <- 1
      campo[3,2] <- 1
      campo[4,3] <- 1
      campo[4,2] <- 1
      campo[5,1] <- 1
      campo[5,5] <- 1
      //Condição caso o usário acerte a bomba
      se campo[linha,coluna] = 1 entao
         escreval("BOOM")

      senao

         escreval ("ESPAÇO LIVRE!!")
         escreval("")
         campo[linha,coluna] <- 9
         tentativas <- tentativas +1
      fimse
      //Condição de derrota e vitória
   ate (campo[linha,coluna] = 1) ou (tentativas = 21)

   se (campo[linha,coluna] = 1) entao
      escreval("Perdeu")
   senao
      escreval ("Parabéns você venceu")
   fimse



Fimalgoritmo