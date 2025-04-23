*** Settings ***
Resource    Resource/Settings.resource
Resource    Resource/tela_de_login.resource
Resource    Resource/Endereço.resource
Resource    Resource/Carrinho.resource

*** Variables ***

*** Test Cases ***
Abrir Aplicativo
    Abrir app    ${SERVER_URL}    ${PLATFORM_NAME}    ${AUTOMATION_NAME}    ${DEVICE_NAME}    ${APP_PACKAGE}    ${APP_ACTIVITY}    ${PLATFORM_VERSION}

Clicar no Campo de Busca
    Clicando no campo de busca

Pesquisar Produto
    Pesquisando um produto

Selecionar Produto
    Selecionando um produto

Verificar Nome do Produto
    Verificando o nome do produto

Adicionar Primeiro Produto ao Carrinho
    Adicionando o produto ao Carrinho

Buscar Novo Produto
    Buscando outro produto

Clicar no Segundo Produto
    Clicando no segundo produto

Adicionar Segundo Produto ao Carrinho
    Adicionando o segundo produto ao Carrinho

Voltar à Tela Inicial do Aplicativo
    Voltando a tela inicial do app

Clicar no Botão de Departamentos
    Clicando no botão de departamentos

Selecionar Departamento
    Clicando em Hardware

Selecionar Subdepartamento
    Clicando em Processadores    

Selecionar Marca de Processadores
    Clicando em AMD

Selecionar Processador
    Selecionando um Processador

Clicar em Comprar
    Clicando em Comprar

Ir para o Carrinho
    Indo para o Carrinho

Adicionar Garantia Estendida
    Adicionado garantia estendida

Voltar à Tela Inicial
    Voltando a tela inicial 3

Cadastrar Conta
    Cadastrando conta

Clicar no Botão de Cadastre-se
    Clicando no botão de Cadastre se

Preencher Nome Completo
    Preenchendo o nome completo 

Preencher CPF
    Preenchendo CPF

Preencher Gênero
    Preenchendo genero

Preencher Data de Nascimento
    Preenchendo data de nascimento

Preencher Número do Celular
    Preenchendo celular

Preencher Email da Conta
    Preenchendo email

Preencher Campo de Senha
    Preenchendo senha

Confirmar Senha
    Confirmando senha

Informar Onde Conheceu a Kabum
    Onde eu conheci a kabum

Aceitar Termos
    Aceitando termos

Clicar no Botão de Continuar
    Clicando no botão de continuar

Adicionar Endereço
    Adicionando endereço

Preencher CEP
    Preenchendo CEP

Adicionar Identificação
    Identificação

Preencher Número de Endereço
    Preenchendo numero

Preencher Complemento
    Preenchendo complemento

Adicionar Referência
    Preenchendo referencia

Clicar no Botão de Concluir Cadastro
    Clicando no botão de concluir cadastro