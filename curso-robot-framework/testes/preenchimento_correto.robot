*** Settings ***
Resource        ../resources/main.robot
Test Setup      Dado que eu acesse o Organo
Test Teardown   Fechar o navegador

*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado.
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então identificar card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time disponível, se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    Então criar e identificar um card em cada time disponível
