# CampoMinado
 Jogo campo minado 
    Atividade solicitada pela professora Aline para fazer o jogo Campo Minado 
em português estruturado e C#. Alunos do projeto são Léo Masago e Bruno Lima.

Estudo de Casos
    O jogo é feito por uma matriz 5x5 e têm 6 bombas definidas nos locais:
    (1,2)
    (3,2)
    (4,3)
    (4,2)
    (5,1)
    (5,5)

Campo do Jogo

1 2 3 4 5 
__________
1 1 1 1 1 | 1
1 1 1 1 1 | 2
1 1 1 1 1 | 3  
1 1 1 1 1 | 4    
1 1 1 1 1 | 5

    O campo vai iniciar assim e o jogador deve escolher a linha e a coluna que 
ele acha não ter bomba.

1 2 3 4 5 
__________
1 x 1 1 1 | 1
1 1 1 1 1 | 2
1 x 1 1 1 | 3  
1 x x 1 1 | 4    
x 1 1 1 x | 5

    Estás são as posições das bombas.

1 2 3 4 5 
__________
9 1 9 9 9 | 1
9 9 9 9 9 | 2
9 1 9 9 9 | 3  
9 1 1 9 9 | 4    
1 9 9 9 1 | 5

    O usuário vai jogando e conforme for espaço livre, a matriz vai ser reescrita
 com o espaço que ele marcou como nove. No final, ele deverá deixar só as bombas
 conforme o campo acima. Caso ele acerte a bomba, ele perde. Caso ele consiga 
 achar 21 lugares sem a bomba, ele ganhará.