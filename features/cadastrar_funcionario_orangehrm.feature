#language: pt
#UTF-8

	
	Funcionalidade: Cadastrar Funcionário 
		Eu como RH
		Quero cadastrar um Funcionário
		Para inclusão de novo Funcionário 

			@orangehrmcad
	  		Cenário: Cadastrar Usuario
	  			Dado que eu esteja no site Orangehrm
	  			Quando logar no sistema 
	  			E preencher os dados do Funcionario
	  			Então Funcionario deve ser cadastrado com sucesso 
