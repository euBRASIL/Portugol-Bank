# Portugol-Bank - Sistema de Conta Bancária 
Este é um programa simples escrito em Portugol que simula um sistema de contas bancárias. O programa permite criar e gerenciar conta corrente e conta poupança, realizando operações como saques, depósitos, aplicação na poupança e resgate

# Fucionalidades do Banco

• Interface de Menu: O programa possui um menu interativo que exibe as opções disponíveis ao usuário e solicita a entrada da opção desejada.

• Criação de Conta: O programa permite criar uma nova conta corrente. Ao criar a conta corrente, é solicitado o nome do titular, número da agência, número da conta corrente e dígito verificador.

• Depósito Inicial: Ao criar uma nova conta corrente, o programa dá a opção ao cliente de realizar um depósito inicial. Caso selecionado, é solicitado o valor a ser depositado e o saldo da conta corrente é atualizado.

• Exibição de Saldo: É possível exibir o saldo atual da conta corrente e da conta poupança.

• Saque: É possível realizar saques na conta corrente. O programa solicita o valor a ser sacado e verifica se o saldo é suficiente. Caso seja possível realizar o saque, o saldo da conta corrente é atualizado.

• Aplicação na Poupança: O programa permite aplicar um valor da conta corrente na conta poupança. É solicitado o valor a ser aplicado e, se o saldo da conta corrente for suficiente, o valor é transferido para a conta poupança.

• Depósito em Conta Corrente: É possível realizar depósitos na conta corrente. O programa solicita o valor a ser depositado e atualiza o saldo da conta corrente.

• Resgate da Poupança: É possível resgatar um valor da conta poupança para a conta corrente. O programa solicita o valor a ser resgatado e verifica se o saldo da conta poupança é suficiente. Caso seja possível realizar o resgate, o valor é transferido para a conta corrente.

# Detalhado
      
• Interface de Menu:           
      
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

• Criação de Conta: 
      
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

• Depósito Inicial:

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

• Exibição de Saldo:

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
           
• Saque:

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
          
• Aplicação na Poupança:

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
          
• Depósito em Conta Corrente:

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
          
          
• Resgate da Poupança:

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
          
