#language: pt

Funcionalidade: Login na plataforma

#Converte esses ACs para a linguagem Gherkin
#Critérios de Aceitação:
#1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
#2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado eu esteja na tela de login

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu inserir usuário/email válido
E senha válida
Então devo ser direcionado para a tela de checkout

Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu inserir <usuario> e/ou <senha> inválidos
Então deve ser exibida a mensagem "Usuário ou senha inválidos"

|usuario|senha|
|"fdasjiofsa"|"fqjowff"|                         CT1: Usuário e Senha inválidos
|"fdasjiofsa"|"senha123"|                        CT2: Usuário inválido e Senha válida
|"joao123"|"fqjowff"|                            CT3: Usuário válido e Senha inválida