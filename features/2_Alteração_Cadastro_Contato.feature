#encoding: utf-8
#language: pt

Funcionalidade: Alteração_Cadastro_Contato
Eu como administrador do SuiteCRM 
Quero realizar uma alteração em um contato já cadastrado
Para atualizar minha agenda

@in
Cenario: Alteração_Cadastro_Contato
	Dado que esteja na home do site SuiteCRM
	Quando alterar os campos do contato 
	Entao validar que todas as informações foram salvas com sucesso