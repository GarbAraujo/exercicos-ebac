# language: pt
Funcionalidade: Configurar Produto
  Como cliente da EBAC-SHOP [cite: 307]
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade [cite: 307]
  Para depois inserir no carrinho [cite: 307]

  Contexto:
    Dado que estou na página de detalhes do produto

  Cenário: Seleções de cor, tamanho e quantidade são obrigatórias
    Quando eu tento adicionar o produto ao carrinho sem selecionar a cor
    E eu tento adicionar o produto ao carrinho sem selecionar o tamanho
    E eu tento adicionar o produto ao carrinho sem inserir a quantidade
    Então o sistema deve exibir uma mensagem informando que as seleções são obrigatórias [cite: 307]

  Cenário: Limitar a quantidade de produtos por venda
    Dado que um produto está disponível para configuração
    Quando eu tento selecionar uma quantidade maior que 10
    Então o sistema deve me impedir de adicionar mais de 10 produtos por venda [cite: 307]

  Cenário: Botão "Limpar" deve resetar as configurações do produto
    Dado que eu selecionei a cor, o tamanho e a quantidade do produto
    Quando eu clico no botão "Limpar"
    Então todas as seleções de cor, tamanho e quantidade devem voltar ao estado original [cite: 307]