#language:pt

Funcionalidade: Login na EBAC Shop

Como cliente da EBAC Shop
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto: 
Dado que o usuário está na página de login da EBAC Shop

Cenario: Login com sucesso  
Quando digitar um usuário válido
E a senha válida
Então Deve ser direcionado para a página de pedidos

Scenario Outline: Login com dados inválidos
Quando digitar um <usuario>
E a senha <senha>
Então deve ser exibida uma mensagem de erro "Usuário ou senha inválidos"

Examples:
    | usuario   | senha |
    | valido  | invalido |
    | invalido | valido |
    | invalido | invalido |