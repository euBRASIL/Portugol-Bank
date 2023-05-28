programa
{
		/* Atividade ClassRoom BANCO ETE 	
		Aluna: Evellyn Amélia, Danilo Mendonça 	
		Turma: 1°A - DS - Subsequente 	
		Matéria: LPC 
		Prof.: SILVIO MONTE 

	     Github: https://github.com/evellynamelia
 				
	        1 - Apenas um cliente por execução;
	        2 - Ao criar conta corrente, obrigatório perguntar se deseja realizar deposito inicial e criar automaticamente conta poupança;
	        3 - Necessário saldo para transferência entre contas;
	        4 - As contas precisam ter: nome titular, agência, número da conta e dígito verificador;
	        5 - Operações na CC: saque, depósito e exibir conta;
	        6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
	        7 - Comentar todo trecho do código.
	        8 - Postar no GitHub
	        
          */   
        
     inclua biblioteca Matematica --> m

     funcao inicio()
	{ 
		
	     // Entrada das Variaveis 

		cadeia titular
		inteiro opcao, agencia, digitoCC, contaCC, contaCP, deposito
		real valor, saldoD = 0.0, saldoCC = 0.0, saldoCP = 0.0
		logico menu = verdadeiro, usuario = falso

	     //Entrada de Dados: Apresentação do Banco ETE
	
	     faca {
	     	escreva("\n")
			escreva(" ==================== BANCO ETE ===================="+"\n")
			escreva("|                                                   |"+"\n") 				
			escreva("|Escolha uma opção:                                 |"+"\n")
			escreva("|1. Criar Conta                                     |"+"\n") 				
			escreva("|2. Exibir Saldo                                    |"+"\n")
			escreva("|3. Saque em Conta Corrente                         |"+"\n") 				
			escreva("|4. Aplicar na Conta Poupança                       |"+"\n") 				
			escreva("|5. Depósito em Conta Corrente                      |"+"\n")
			escreva("|6. Resgate em Conta Poupança                       |"+"\n") 				
			escreva("|7. Sair                                            |"+"\n")
			escreva(" =================================================="+"\n")
			escreva("\n")
			escreva("Insira opção: ")
			leia(opcao)
			limpa()


		//Criação da conta do titular

		 	escolha(opcao){	      

		 	caso 1: 
				escreva("Insira o Nome do Titular: ")
				leia(titular)
				escreva("\nDigite o Número da sua agência: ")
				leia(agencia)
				escreva("\nDigite o número da Conta Corrente: ")
				leia(contaCC)
				escreva("\nDigite o Número Verificador da sua conta: ")
				leia(digitoCC)
				limpa()
						
		//Definição final da conta do titular
				
				escreva("\nConta Corrente criada com sucesso!", "\n")
				usuario = verdadeiro
				escreva("\nBem vindo(a) ao Banco ETE, " + titular + "\n")
				escreva("Agencia: " + agencia + "\n")
				escreva("Conta Corrente: " + contaCC +"-" + digitoCC +"\n")
				escreva("Saldo disponivel: R$ " + saldoD + "\n")
				

		//Realização de primeiro deposito
				
			     escreva("\nDeseja realizar um deposito inicial na sua conta? [ 1 - SIM ][ 2 - NÃO ]\n")
			     leia(deposito)

	     	escolha(deposito){

	     	caso 1:
	     	     limpa()
				escreva("\nQual valor você deseja depositar? R$ ")
				leia(valor)
				saldoCC = saldoCC + valor
				escreva("\nDepósito realizado com sucesso!\n")
				escreva("Seu saldo atual na Conta Corrente é de: R$ " + saldoCC + "\n")
				pare

		//Caso o Titular não queira fazer o primeiro deposito
	     			
	     	caso 2:
				escreva("\nDeseja escolher outra opção do nosso menu? [ 1 - SIM ] [ 2 - NÃO ]\n")
				inteiro parar
				leia(parar)

	     	escolha(parar){

	     	caso 1:
	     	     limpa()
				escreva("\nEscolha outra opção do nosso menu.\n")					   
				pare

	     	caso 2:
	     	     limpa()
				escreva("\nDigite 7 para SAIR.\n")
				pare					     			
				}
	     		pare
	     		}
	     		pare

	     //Exibir saldo da conta

	     	caso 2:
	     		se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para acessar ao saldo do banco.\n")
	     		escreva("\n")	     				
	     		pare
	     		}

	     		senao
	     		limpa()
			     escreva("Saldo Conta Corrente: R$ " + saldoCC + "\n")
				escreva("Saldo Conta Poupança: R$ " + saldoCP + "\n")
			     pare

	     		

	     //Saque em conta Corrente

	     	caso 3:
	     		se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para fazer um saque no banco.\n")
	     		escreva("\n")	     			  	
		     	pare
		     	}

		     	senao
		     	limpa()
	     		escreva("\nQual valor você deseja sacar? R$ ")
	     		leia(valor)
	     		    
	     		se((saldoCC - valor) >= 0){
				saldoCC = saldoCC - valor
				escreva("\nSaque realizado com sucesso!")
				escreva("\nSeu saldo atual na Conta Corrente é de: R$ " + saldoCC + "\n")
	     		}
	     		
	     		senao
	     	     escreva("\nValor insuficiente para saque! \n")
	     		pare

	     //Aplicar na Conta Poupança 

	     	caso 4:
	     		se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para aplicar.\n")
	     		escreva("\n")
	     		pare
	     		}
	     				
	     		senao
	     		limpa()	     		 
	     		escreva("\nQual valor deseja Aplicar? R$ ")
				leia(valor)
				 
				se ((saldoCC - valor) >= 0){
			 	saldoCC = saldoCC - valor
			 	saldoCP = saldoCP + valor
			   	escreva("\nSaldo atual Conta Corrente: R$ " + saldoCC + "\n")
			   	escreva("Saldo atual Conta Poupança: R$ " + saldoCP + "\n")
			   	} 
			   	
			   	senao
			   	escreva("\nValor insuficiente para Aplicação.\n")
			   	pare

		//Deposito em Conta Corrente

			 caso 5:			     
			     se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para fazer um Deposito.\n")
	     		escreva("\n")	     					     			
	     		pare
	     		}

	     		senao
	     		limpa()
	     		escreva("\nQual valor você deseja depositar? R$ ")
		 		leia(valor)
		 		saldoCC = saldoCC + valor
		   		escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
		   		escreva("\n")
		   		pare

	     //Resgate em Conta Poupança

			 caso 6:
			     se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para fazer um resgate.\n")
	     		escreva("\n")	     					     			
	     		pare
	     		}

	     		senao
	     		limpa()
			     escreva("\nQual valor deseja resgatar? R$ ")
				leia(valor)
				 
			     se((saldoCP - valor) >= 0){										
			 	saldoCC = saldoCC + valor
			 	saldoCP = saldoCP - valor
			   	escreva("\nSeu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
			   	escreva("Seu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
			     }					
			   	
			   	senao
			   	escreva("\nValor insuficiente para resgate.\n")			   	
			   	pare

	      //Sair

			  caso 7:	     			
			    	escreva("\nVejo você em breve, volte sempre!!!\n")
     			menu = falso     				 
			     pare

			  caso contrario:
				escreva("Digite uma opção válida","\n")
				
		 	     } 
		 	
	          }enquanto(menu == verdadeiro) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */