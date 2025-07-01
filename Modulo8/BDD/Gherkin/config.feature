# language: pt
Funcionalidade: Configurar e Adicionar Produto ao Carrinho
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de detalhes de um produto com opções de configuração

  Cenário: Adicionar produto ao carrinho com configurações válidas
    Quando eu seleciono uma cor e um tamanho disponíveis e insiro uma quantidade válida, até 10 unidades
    E eu clico no botão "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao meu carrinho
    E uma mensagem de sucesso deve ser exibida ao usuário.

  Cenário: Impedir adição de produto sem seleções obrigatórias
    Quando eu clico no botão "Adicionar ao Carrinho" sem ter selecionado cor, tamanho ou quantidade
    Então o sistema deve exibir uma mensagem de validação indicando os campos obrigatórios
    E o produto não deve ser adicionado ao carrinho.

  Cenário: Impedir adição de mais de 10 produtos na quantidade
    Dado que um produto está disponível para configuração
    Quando eu tento inserir uma quantidade maior que 10
    Então o sistema deve me impedir de adicionar mais de 10 produtos por venda
    E o campo de quantidade deve ser ajustado para o máximo permitido ou a ação deve ser bloqueada.

  Cenário: Redefinir as configurações do produto ao limpar
    Dado que eu selecionei a cor, o tamanho e a quantidade do produto
    Quando eu clico no botão "Limpar"
    Então todas as seleções de cor, tamanho e quantidade devem voltar ao estado original
