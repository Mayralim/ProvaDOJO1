#language: pt
#UTF-8

	
	Funcionalidade: Editar Funcionário 
		Eu como RH
		Quero editar um Funcionário
		Para atualizar dados do Funcionário 

			@orangehrmedit
	  		Cenário: Editar Funcionário
	  			Dado que eu esteja logado no site Orangehrm
	  			Quando selecionar um Funcionário
	  			E editar os dados do Funcionario
	  			Então Funcionario deve ser atualizado com sucesso 
