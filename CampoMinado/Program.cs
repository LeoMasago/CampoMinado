using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CampoMinado
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int[,] campo = new int[5, 5];
            int linha, coluna, tentativas = 2;

            do
            {
                // Criação do campo na tela
                Console.WriteLine("  1  2  3  4  5 ");
                Console.WriteLine("- - - - - - - - ");
                for (linha = 1; linha <= 5; linha++)
                {
                    for (coluna = 1; coluna <= 5; coluna++)
                    {
                        if (campo[linha - 1, coluna - 1] != 0)
                        {
                            Console.Write(" {0} ", campo[linha - 1, coluna - 1]);
                        }
                        else
                        {
                            Console.Write(" 1 ");
                        }
                    }
                    Console.WriteLine(" |{0}", linha);
                }
                Console.WriteLine();

                Console.Write("Digite a Linha: ");
                linha = int.Parse(Console.ReadLine());
                Console.Write("Digite a Coluna: ");
                coluna = int.Parse(Console.ReadLine());

                // Quantidade e posição de bombas
                campo[0, 1] = 1;
                campo[2, 1] = 1;
                campo[3, 2] = 1;
                campo[3, 1] = 1;
                campo[4, 0] = 1;
                campo[4, 4] = 1;

                // Condição caso o usuário acerte a bomba
                if (campo[linha - 1, coluna - 1] == 1)
                {
                    Console.WriteLine("BOOM");
                }
                else
                {
                    Console.WriteLine("ESPAÇO LIVRE!!");
                    Console.WriteLine();
                    campo[linha - 1, coluna - 1] = 9;
                    tentativas++;
                }
                // Condição de derrota e vitória
            } while (campo[linha - 1, coluna - 1] != 1 && tentativas != 21);

            

            if (campo[linha - 1, coluna - 1] == 1)
            {
                Console.WriteLine("Perdeu");
                Console.ReadLine();
            }
            else
            {
                Console.WriteLine("Parabéns você venceu");
                Console.ReadLine();
            }







        }
    }
}


