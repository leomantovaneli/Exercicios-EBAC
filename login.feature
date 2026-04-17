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

Esquema do Cenario: Login com dados inválidos
Quando digitar um <usuario>
E a senha <senha>
Então deve exibir a <mensagem>

Exemplos:
    | usuario                | senha            |  mensagem                     
    | teste@ebacshop.com     | Senhavalida123   |  Login realizado com sucesso
    | naoexiste@ebacshop.com | Senhavalida123   |  Usuário ou senha inválidos      
    | teste@ebacshop.com     | Senhainvalida    |  Usuário ou senha inválidos         
    | naoexiste@ebacshop.com | Senhainvalida    |  Usuário ou senha inválidos       