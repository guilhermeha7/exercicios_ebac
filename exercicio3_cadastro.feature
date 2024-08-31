#language: pt

Funcionalidade: Tela de cadastro

#Converte esses ACs para a linguagem Gherkin
#Critérios de Aceitação:
#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Dado que eu tenha preenchido todos os campos obrigatórios para o cadastro
Quando eu clicar em "Finalizar Compra"
Então a compra deve ser finalizada com sucesso

Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Dado que eu tenha preenchido o campo e-mail com um formato inválido.
Quando eu clicar em "Finalizar Compra"
Então deve ser exibida uma mensagem de erro "O campo e-mail está com um formato inválido"

Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Dado que eu tenha deixado vazio um campo obrigatório
Quando eu clicar em "Finalizar Compra"
Então deve exibir mensagem de alerta "Preencha todos os campos obrigatórios"