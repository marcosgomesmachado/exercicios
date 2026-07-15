programa
{

	
	


	funcao real media_alunos(real a, real b){
		retorne (a + b) / 2
	}
	
	
	funcao dados(inteiro c, real nota1[], real nota2[], cadeia nomes[], real idade[], real media[]){

		limpa()
		
				
		
		para(inteiro i = 0; i < c; i++){

			imprime_linha_cadastro()
			
			escreva("\nNOME DO ALUNO: ")
			leia(nomes[i])
			escreva("\nA IDADE EM ANOS: ")
			leia(idade[i])
			faca {
			escreva("\nA 1º NOTA: (0 a 10) ")
			leia(nota1[i])
		
			} enquanto (nota1[i] < 0 ou nota1[i] > 10)
			faca {
			escreva("\nA 2º NOTA: (0 a 10) ")
			leia(nota2[i])
		
			} enquanto(nota2[i] < 0 ou nota2[i] > 10)
			media[i] = media_alunos(nota1[i], nota2[i])
			limpa()
			}
	}

	funcao atualizar_estatisticas(inteiro cont, cadeia nomes[],real idade[],real media[],real &maior_media,cadeia &nome_maior_media,real &menor_media,cadeia &nome_menor_media,real &media_turma,real &media_idade,inteiro &aprovado,inteiro &reprovado,inteiro &aluno_maior_media_idade)
{

	maior_media = ma_media(media, cont)
	nome_maior_media = alu_maior_media(nomes, cont, media)

	menor_media = me_media(media, cont)
	nome_menor_media = alu_menor_media(nomes, cont, media)

	media_turma = m_turma(media, cont)

	aprovado = aprov(media, cont)

	reprovado = reprov(media, cont)

	media_idade = m_idade(idade, cont)

	aluno_maior_media_idade = alunos_maior_media(idade, media_idade, cont)
}

	funcao alterar_nota(real nota1[], real nota2[], cadeia nomes[], real media[], real idade[], inteiro cont){
		real nova_nota1, nova_nota2,maior_media, menor_media, media_idade, media_turma
		inteiro aluno_maior_media_idade, aprovado, reprovado
		cadeia nome, nome_maior_media, nome_menor_media
		logico encontrou = falso
		
		escreva("\n\nInforme o nome do aluno que você deseja alterar a nota: ")
		leia(nome)
		para (inteiro i = 0; i < cont; i++){
			se (nome == nomes[i]){
				escreva("\nAs notas antigas são: primeira nota ", nota1[i], " segunda nota ", nota2[i])
				faca {
				escreva("\nInforme a nova primeira nota: ")
				leia(nova_nota1)
				nota1[i] = nova_nota1
				} enquanto (nota1[i] < 0 ou nota1[i] > 10)
				faca {
				escreva("\nInforme a nova segunda nota: ")
				leia(nova_nota2)
				nota2[i] = nova_nota2
				} enquanto(nota2[i] < 0 ou nota2[i] > 10)
				
				media[i] = media_alunos(nota1[i], nota2[i])
				
				escreva("\nNota alterada com sucesso!")
				encontrou = verdadeiro
				pare
			} 
		}
		se (encontrou == falso){
			escreva("Nota não alterada")
		}
	}

	funcao consultar_aluno(cadeia nomes[], inteiro quantidade, real idade[], real nota1[], real nota2[], real media[]){
		cadeia nome
		logico encontrou = falso
		
		escreva("\nInforme o nome do aluno que você deseja consultar: ")
		leia(nome)
		para(inteiro i = 0; i < quantidade; i++){
			se (nomes[i] == nome){
				escreva("\nAluno encontrado!")
				escreva("\n\nO aluno consultado é: ", nome)
				escreva("\nSua idade é: ", idade[i])
				escreva("\nA sua primeria nota é: ", nota1[i])
				escreva("\nA sua segunda nota é: ", nota2[i])
				escreva("\nA sua média é: ", media[i])
				encontrou = verdadeiro
			} se (encontrou == falso) {
				escreva("\nAluno não encontrado")
			}
		}
		
	}

	funcao resultados(inteiro quantidade, real nota1[], real nota2[],cadeia nomes[], real media[], cadeia nome_maior_media, real maior_media, cadeia nome_menor_media, real menor_media, inteiro aprovado, inteiro reprovado, real media_turma, inteiro aluno_maior_media_idade){

		imprime_linha_resultado()

		
		
		para(inteiro i = 0; i < quantidade; i++){
			media[i] = media_alunos(nota1[i], nota2[i])
			escreva("\n\n A média do aluno: ", nomes[i], " foi de ", media[i])
			escreva("\n")
		}

		escreva("\n\nA maior média foi do: ", nome_maior_media, " com a nota: ", maior_media)
		escreva("\n\nA menor média foi do ", nome_menor_media, " com a nota: ", menor_media)
		escreva("\n\nForam aprovados: ", aprovado, " alunos", "\n\n", "Foram reprovados: ", reprovado, " alunos")
		escreva("\n\nA média da turma foi: ", media_turma)
		escreva("\n\nAlunos com idade maior que a média da idade: ", aluno_maior_media_idade)
		escreva("\n")
		escreva("\nAlunos aprovados: \n")
		alunos_aprov(nomes, quantidade, media)
		
	}

	funcao imprime_menu(){
		inteiro i
		escreva("\n")
		para(i = 0; i < 10; i++){
			escreva("--")
		}
		escreva("\n	MENU\n")
		para(i = 0; i < 10; i++){
			escreva("--")
		}
		escreva("\n")
		escreva("1 - consultar aluno pelo nome \n")
		escreva("2 - Alterar nota do aluno \n")
		escreva("3 - Mostrar estatisticas novamente \n")
		escreva("4 - sair")
	}

	funcao imprime_linha_resultado(){
		para(inteiro i = 0; i < 9; i++){
			escreva("---")
		}
		escreva("\nRESULTADO DAS ESTATISTICAS\n")
		para(inteiro i = 0; i < 9; i++){
			escreva("---")
		}
	}

	funcao imprime_linha_cadastro(){
		para (inteiro i = 0; i < 9; i++){
			escreva("--")
		}
		escreva("\nCADASTRO DE DADOS\n")

		para(inteiro i = 0; i < 9; i++){
			escreva("--")
		}
		escreva("\n\n")
	}

	funcao alunos_aprov(cadeia nomes[], inteiro quantidade, real media[]){
		para(inteiro i = 0; i < quantidade; i++){
			se (media[i] >= 6){
				escreva("\n", nomes[i], "\n")
			}
		}
		
		
	}

	funcao inteiro reprov(real media[], inteiro quantidade){
		inteiro reprovado = 0
		para(inteiro i = 0; i < quantidade; i++){
			se (media[i] < 6){
				reprovado++
			}
		}
		retorne reprovado
	}

	funcao inteiro aprov(real media[], inteiro quantidade){
		inteiro aprovado = 0
		para(inteiro i = 0; i < quantidade; i++){
			se (media[i] >= 6){
				aprovado++
			}
		}
		retorne aprovado
	}

	funcao inteiro alunos_maior_media(real idade[], real media_idade, inteiro quantidade){
		inteiro aluno_maior_media_idade = 0
		para(inteiro k = 0; k < quantidade; k++) {
			se (idade[k] > media_idade) {
				aluno_maior_media_idade++
			}
		}
		retorne aluno_maior_media_idade
	}

	funcao cadeia alu_menor_media(cadeia name[], inteiro quantidade, real m[]){
		real menor_m = m[0]
		cadeia nome = name[0]
		para(inteiro i = 1; i < quantidade; i++){
			se (menor_m > m[i]){
				menor_m = m[i]
				nome = name[i]
			}
		}
		retorne nome
	}

	funcao real me_media(real y[], inteiro quantidade){
		real menor_media = y[0]
		para(inteiro i = 1; i < quantidade; i++){
			se (menor_media > y[i]){
				menor_media = y[i]
			}
		}
		retorne menor_media
	}

	funcao cadeia alu_maior_media(cadeia name[], inteiro quantidade, real m[]){
		 real maior_m = m[0]
		 cadeia nomes = name[0]
		 para(inteiro i = 1; i < quantidade; i++){
		 	se (maior_m < m[i]) {
		 		maior_m = m[i]
		 		nomes = name[i]
		 	}
		 }
		 retorne nomes
	}

	funcao real ma_media(real x[], inteiro quantidade){
		real maior_media = x[0]
		para(inteiro i = 1; i < quantidade; i++){
			se (maior_media < x[i]) {
				maior_media = x[i]
			}
		}
		retorne maior_media
	}
	

	funcao real m_idade(real idades[], inteiro quantidade){
		real soma = 0.0
		para(inteiro j = 0; j < quantidade; j++){
			soma = soma + idades[j]
		}
		retorne soma / quantidade
	}

	funcao real m_turma(real medias[], inteiro quantidade){
		real soma = 0.0
		para(inteiro i = 0; i < quantidade; i++){
			soma = soma + medias[i]
		}
		retorne soma / quantidade
	}
	

	funcao inicio()
	{
		inteiro cont, aluno_maior_media_idade = 0, aprovado = 0, reprovado = 0, opcao = 0
		
		real nota1[50], nota2[50], idade[50], media[50], media_turma = 0.0, maior_media = 0.0, menor_media = 0.0, media_idade = 0.0
		
		cadeia nomes[50], nome_maior_media = "", nome_menor_media = "", alunos_aprovados[50], ir = ""
		 
		escreva("Informe quantos alunos há na sala: ")
		leia(cont)
		
		dados(cont, nota1, nota2, nomes, idade, media)

		atualizar_estatisticas(cont, nomes, idade, media, maior_media, nome_maior_media, menor_media, nome_menor_media, media_turma, media_idade, aprovado, reprovado, aluno_maior_media_idade)

		
			

		resultados(cont, nota1, nota2, nomes, media, nome_maior_media, maior_media, nome_menor_media, menor_media, aprovado, reprovado, media_turma, aluno_maior_media_idade)

		
		escreva("\n\nQuer ir para o menu: [s/n] ")
		leia(ir)

		se (ir == "s"){

			limpa()

			enquanto (opcao != 4){
			
				imprime_menu()
				escreva("\n\nEscolha: ")
				leia(opcao)
				escolha(opcao)
				{
					caso 1:
						consultar_aluno(nomes, cont, idade,  nota1, nota2, media)
					pare

					caso 2:
						alterar_nota(nota1, nota2, nomes, media, idade, cont)

						atualizar_estatisticas(cont,nomes,idade,media,maior_media,nome_maior_media,menor_media,nome_menor_media,media_turma,media_idade,aprovado,reprovado,aluno_maior_media_idade)

						
					pare

					caso 3:
						resultados(cont, nota1, nota2, nomes, media, nome_maior_media, maior_media, nome_menor_media, menor_media, aprovado, reprovado, media_turma, aluno_maior_media_idade)
					pare
	
					caso 4:
						escreva("\n\nFIM")
					pare
	
					caso contrario:
						escreva("\n\nVALOR INVALIDO")
					pare
				}
			}
		}
					
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */