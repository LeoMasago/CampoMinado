Algoritmo "Campo Minado"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Aline Firmino Brito
// Descri��o   : Fazer o Jogo campo Minado
// Autor(a)    : L�o Masago e Bruno Lima
// Data atual  : 17/03/2023
Var
   campo:vetor[1..5, 1..5] de inteiro
   linha, coluna : inteiro
   tentativas : inteiro

Inicio
   tentativas <- 2
   repita
      //Cria��o do campo na tela
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

      //Quantidade e posi��o de bombas
      campo[1,2] <- 1
      campo[3,2] <- 1
      campo[4,3] <- 1
      campo[4,2] <- 1
      campo[5,1] <- 1
      campo[5,5] <- 1
      //Condi��o caso o us�rio acerte a bomba
      se campo[linha,coluna] = 1 entao
         escreval("BOOM")

      senao

         escreval ("ESPA�O LIVRE!!")
         escreval("")
         campo[linha,coluna] <- 9
         tentativas <- tentativas +1
      fimse
      //Condi��o de derrota e vit�ria
   ate (campo[linha,coluna] = 1) ou (tentativas = 21)

   se (campo[linha,coluna] = 1) entao
      escreval("Perdeu")
   senao
      escreval ("Parab�ns voc� venceu")
   fimse



Fimalgoritmo