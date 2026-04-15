#language: pt 

Feature: Cadastro na plataforma EBAC Shop

Como cliente da EBAC Shop
Quero concluir meu cadastro
Para finalizar minha compra

Background: 
Given que o usuario está na página de cadastro

Scenario: Caminho feliz do cadastro
When o usuario está se cadastrando na plataforma
And inserir email valido
And inserir todos os dados obrigatórios
Then o cadastro deve ser concluído com sucesso

Scenario: deixar de preencher dados obrigatórios
When o usuario está se cadastrando na plataforma
And deixar de preencher um ou mais campos sinalizados com asterisco (*)
Then deve ser exibida uma mensagem de erro "preencha todos os campos obrigatórios"

Scenario: email com formato inválido
When o usuario está se cadastrando na plataforma
And inserir um email com formato inválido
Then deve ser exibida uma mensagem de erro "formato de email inválido"

Scenario: Deixar campos em branco
When o usuario está se cadastrando na plataforma
And deixar um ou mais campos em branco
Then deve ser exibida uma mensagem de erro "preencha todos os campos"
