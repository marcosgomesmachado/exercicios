programa
{
	

		funcao logico FazerJogada(cadeia XouO, inteiro posicao, cadeia Tabuleiro[][]){
			logico jogadaValida = falso
			inteiro l, c

					se (posicao > 0 e posicao < 10){
		
					l = (posicao - 1) / 3
					c = (posicao - 1) % 3
					se (Tabuleiro[l][c] != "X" e Tabuleiro[l][c] != "O"){
						Tabuleiro[l][c] = XouO
						retorne verdadeiro
				
					} senao{
						escreva("\nPosicao ja ocupada.")
						retorne falso
					}
				} senao {
					escreva("\nPosicao invalida.")
					retorne falso
				}
						
			}
	
		funcao CriarTabuleiro(cadeia Tabuleiro[][]){
			escreva("\n===============\n")
			para(inteiro l = 0; l < 3; l++){
				
				para(inteiro c = 0; c < 3; c++){
					escreva("| ", Tabuleiro[l][c], " |")
				}
				escreva("\n")
			}
			escreva("===============\n")
		}

		funcao cadeia JogadorAtual(inteiro partida){
			
			se (partida % 2 == 0){
				retorne "X"
			} senao {
				retorne "O"
			}
			
		}
	
		funcao logico VerificarVitoria(cadeia jogador, cadeia Tabuleiro[][])
	{
		
		para(inteiro i = 0; i < 3; i++)
		{
			se(Tabuleiro[i][0] == jogador e
			   Tabuleiro[i][1] == jogador e
			   Tabuleiro[i][2] == jogador)
			{
				retorne verdadeiro
			}
		}
	
		
		para(inteiro i = 0; i < 3; i++)
		{
			se(Tabuleiro[0][i] == jogador e
			   Tabuleiro[1][i] == jogador e
			   Tabuleiro[2][i] == jogador)
			{
				retorne verdadeiro
			}
		}
	
		
		se(Tabuleiro[0][0] == jogador e
		   Tabuleiro[1][1] == jogador e
		   Tabuleiro[2][2] == jogador)
		{
			retorne verdadeiro
		}
	
		
		se(Tabuleiro[0][2] == jogador e
		   Tabuleiro[1][1] == jogador e
		   Tabuleiro[2][0] == jogador)
		{
			retorne verdadeiro
		}
	
		retorne falso
	}
	
		funcao ReiniciarTabuleiro(cadeia Tabuleiro[][]){
			inteiro numero = 1, l, c
			para(l = 0; l < 3; l++){
				para(c = 0; c < 3; c++){
					Tabuleiro[l][c] = numero + ""
					numero++
				}
			}
		}
		
		funcao inicio()
		{
			cadeia XouO = "", continuar = "s"
			inteiro partida = 0, l = 0, c = 0, posicao = 0
			logico jogadaValida, venceu = falso
			cadeia Tabuleiro[3][3] = {
			{"1", "2", "3"},
			{"4", "5", "6"},
			{"7", "8", "9"}
			}
			
			enquanto(continuar == "s"){

	
				ReiniciarTabuleiro(Tabuleiro)
	
				partida = 0
				venceu = falso
				jogadaValida = falso
				
			
				enquanto(partida < 9){
		
				jogadaValida = falso


				CriarTabuleiro(Tabuleiro)
					
				XouO = JogadorAtual(partida)
		
		
				escreva("Informe qual a posicao que deseja colocar o ", XouO, ": ")
				leia(posicao)
					
				jogadaValida = FazerJogada(XouO, posicao, Tabuleiro)
						
					
				se (jogadaValida){

					partida++
					
					se (VerificarVitoria(XouO, Tabuleiro)){
						CriarTabuleiro(Tabuleiro)
						escreva("\n\nO jogador ", XouO, " Venceu! ")
						venceu = verdadeiro
						pare
					} senao{
						se (partida == 9){
							se (venceu == falso){
								CriarTabuleiro(Tabuleiro)
								escreva("\n\nNinguem venceu, deu empate.\n")
							}
						}
					}
				} 
			}
			escreva("Quer continnuar jogando? [s/n] ")
			leia(continuar)
	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */