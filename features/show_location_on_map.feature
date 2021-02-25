Feature: Mostrar a localização da instituição no mapa.

Scenario: a vítima acabou de fazer a triagem e recebe uma lista de recomendações de instituições que podem lhe ajudar. Ela 

	Given Eu, uma vítima, terminei de fazer a triagem
	When Eu clico numa das opções de instituições
	Then Aparece na tela um mini mapa com a localização da instituição
	And eu posso clicar no mapa e ser levado a um link externo do Google Maps

Scenario: a vítima tenta ver a instituição no mapa, mas sua internet é lenta

	Given Eu, uma vítima utilizando o sistema
	When Eu clico em uma das instituições
	And O mapa não carrega por falta de internet
	Then o sistema retorna uma mensagem alerta "falta de internet"

