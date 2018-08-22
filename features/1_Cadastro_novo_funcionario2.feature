#encoding: utf-8
#language: pt

Funcionalidade: cadastro_novo_contato
Eu como administrador do SuiteCRM 
Quero realizar um cadastro de um novo contato 
Para finalizar seu contato


Cenario: cadastro_novo_contato
	Dado que esteja na tela de cadastro do SuiteCRM 
	Quando salvar todos os dados necessários para cadastro
	Entao validar que um novo contato foi cadastrado