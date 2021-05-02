Feature: Mostrar a localização da instituição no mapa.

Scenario: a vítima acabou de fazer a triagem e recebe uma lista de recomendações de instituições que podem lhe ajudar. Ela 

	Given Eu, uma vítima, terminei de fazer a triagem
	When Eu clico numa das opções de instituições
	Then Aparece na tela um mini mapa com a localização da instituição
	And eu posso clicar no mapa e ser levado a um link externo do Google Maps

Scenario: a vítima consegue ver o mapa com sua instituição

	Given Eu, uma vítima utilizando o sistema
	When Eu clico em uma das instituições
	Then é carregada uma página com o mapa mostrando a instituição
	
Scenario: a vítima vê o telefone da instituição em baixo do mapa
	
	Given Eu, uma vítima utilizando o sistema
	When Eu clico em uma das intituições
	Then é carregada uma página com o telefone da instituição

Scenario: a vítima tenta acessar uma instituição com endereço não encontrado

	Given, eu, uma vítima utilizando o sistema
	When eu clico em uma das instituições
	And a instituição não possui endereço encontrado no maps
	Then o sistema retornma a mensagem "endereço da instituição não encontrado"

Scenario: a vítima olha para o mapa e usa a ferramenta de zoom para se situar melhor

	Given Eu, uma vítima, terminei de fazer a triagem
	When Eu clico numa das opções de instituições
	Then Aparece na tela um mini mapa com a localização da instituição
	And eu posso clicar na ferramenta de zoom para dar zoom-in ou zoom-out no mapa
