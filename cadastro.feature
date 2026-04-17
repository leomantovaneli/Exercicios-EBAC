#language: pt 

Funcionalidade: Cadastro na plataforma EBAC Shop

Como cliente da EBAC Shop
Quero concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado que o usuario está na página de cadastro

Cenario: Caminho feliz do cadastro
Quando realizar cadastro na plataforma
E inserir email valido
E inserir todos os dados obrigatórios
Então o cadastro deve ser concluído com sucesso

Cenario: deixar de preencher dados obrigatórios
Quando realizar cadastro na plataforma
E deixar de preencher um ou mais campos sinalizados com asterisco (*)
Então deve ser exibida uma mensagem de erro "preencha todos os campos obrigatórios"

Cenario: email com formato inválido
Quando realizar cadastro na plataforma
E inserir um email com formato inválido
Então deve ser exibida uma mensagem de erro "formato de email inválido"

Cenario: Deixar campos em branco
Quando realizar cadastro na plataforma
E deixar um ou mais campos em branco
Então deve ser exibida uma mensagem de erro "preencha todos os campos"

