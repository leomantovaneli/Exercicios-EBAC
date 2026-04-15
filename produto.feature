#language: pt

Feature: Configuração de produto

Como cliente da EBAC Shop
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Background: 
Given que o usuário está na página do produto

Scenario: Caminho feliz do produto
When o usuario deseja adcionar o produto ao carrinho
And selecionar cor, tamanho e quantidade
And inserir ate 10 unidades
Then o usuario deve ser direcionado para a página de checkout

Scenario: Personalização do produto
When o usuario deseja adicionar o produto ao carrinho
And não selecionar o tamanho, cor ou quantidade
Then deve ser exibido uma mensagem de erro 

Scenario: Quantidade máxima do produto
When o usuario deseja adicionar o produto ao carrinho
And tentar adicionar mais de 10 unidades
Then deve ser exibida uma mensagem de erro "quantidade máxima permitida é 10 unidades"

Scenario: Retornar produto aos parâmetros originais
When o usuario clicar no botão limpar
Then os campos de personalização do produto devem ser limpos