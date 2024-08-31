#language: pt

Funcionalidade: Configurar Produto

#Converte esses ACs para a linguagem Gherkin
#Critérios de Aceitação:
#1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
#2 – Deve permitir apenas 10 produtos por venda
#3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Dado que eu não tenha escolhido uma cor, tamanho ou quantidade para o produto
Quando eu clicar em "Comprar"
Então deve ser exibido uma mensagem de alerta "Certifique-se de escolher a cor, tamanho e quantidade do produto desejado"

Cenário: Deve permitir apenas 10 produtos por venda
Dado que eu tenha 10 produtos adicionados ao carrinho
Quando eu tentar adicionar mais um
Então deve ser exibido uma mensagem de alerta "Você só pode comprar até 10 produtos por vez"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Dado que eu tenha escolhido uma cor, tamanho ou quantidade para o produto
Quando eu clicar em "Limpar"
Então a cor, tamanho e quantidade padrão do produto devem voltar a ficar selecionados