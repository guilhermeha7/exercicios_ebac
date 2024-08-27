#language: pt

Funcionalidade: Login na plataforma

Contexto:
Dado eu esteja na tela de login

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu inserir usuário/email válido
E senha válida
Então devo ser direcionado para a tela de checkout

Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu inserir <usuario> ou <senha> inválidos
Então deve ser exibida a <mensagem>

|usuario|senha|mensagem|
|""|"senha123"|"Usuário ou senha inválidos"|
|"joao111"|""|"Usuário ou senha inválidos"|
|""|""|"Usuário ou senha inválidos"|
|"joaodhyhtdty"|"senha123"|"Usuário ou senha inválidos"|
|"joao111"|"qfeqwfqffqfw"|"Usuário ou senha inválidos"|    
|"joaodhyhtdty"|"qfeqwfqffqfw"|"Usuário ou senha inválidos"|