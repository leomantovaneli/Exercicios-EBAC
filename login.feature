#language:pt

Feature: Login na EBAC Shop
Como cliente da EBAC Shop
Quero fazer o login na plataforma
Para visualizar meus pedidos

Background: 
Given que o usuário está na página de login da EBAC Shop

Scenario: Login com sucesso  
When o usuário digitar um usuário válido
And a senha válida
Then o usuário deve ser direcionado para a tela de checkout

Scenario Outline: Login com dados inválidos
When o usuário digitar um <usuario>
And a senha <senha>
Then deve ser exibida uma mensagem de erro "Usuário ou senha inválidos"

Examples:
    | usuario   | senha |
    | valido  | invalido |
    | invalido | valido |
    | invalido | invalido |