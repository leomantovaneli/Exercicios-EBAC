#language: pt

Funcionalidade: Configuração de produto

Como cliente da EBAC Shop
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que o usuário está na página do produto

Cenario: Caminho feliz do produto
Quando adicionar o produto ao carrinho
E selecionar cor, tamanho e quantidade
E inserir ate 10 unidades
Then deve ser direcionado para a página de checkout

Cenario: Personalização do produto
Quando adicionar o produto ao carrinho
E não selecionar o tamanho, cor ou quantidade
Então deve ser exibido uma mensagem de erro 

Cenario: Quantidade máxima do produto
Quando adicionar o produto ao carrinho
E tentar adicionar mais de 10 unidades
Então deve ser exibida uma mensagem de erro "quantidade máxima permitida é 10 unidades"

Cenario: Retornar produto aos parâmetros originais
Quando clicar no botão limpar
Então os campos de personalização do produto devem retornar aos parâmetros originais (tamanho, cor e quantidade)