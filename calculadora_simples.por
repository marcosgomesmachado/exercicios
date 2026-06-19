programa
{
	
	funcao inicio()
	{
		caracter operacao
		
		real n1, n2, r /* r == resultado, n1 eh o primeiro numero e n2 eh o segundo numero */
		
		escreva("Informe o primeiro número: ")
		leia(n1)
		
		escreva("\n", "Informe o segundo número: ")
		leia(n2)

		escreva("\n\n", "Escolha a operação que você deseja fazer: (+, -, *, /) ")
		leia(operacao)

		se (operacao == '+') {
			
			r = n1 + n2
			escreva("\n\n", "A soma do primeiro número e o segundo é: ", r, "\n")
			
		} senao se (operacao == '-') {
			
			r = n1 - n2
			escreva("\n\n", "A subtração do primeiro número e o segundo é: ", r, "\n")
			
		} senao se (operacao == '*') {
			
			r = n1 * n2
			escreva("\n\n", "A multiplicação do primeiro número e o segundo é: ", r, "\n")
			
		} senao se (operacao == '/') {
			
			r = n1 / n2
			escreva("\n\n", "A divisão do primeiro número e o segundo é: ", r, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
