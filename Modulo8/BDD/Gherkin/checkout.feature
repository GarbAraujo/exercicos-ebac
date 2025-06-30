# language: pt
Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP [cite: 317]
  Quero concluir meu cadastro [cite: 317]
  Para finalizar minha compra [cite: 317]

  Contexto:
    Dado que estou na tela de cadastro do checkout

  Cenário: Cadastro com todos os dados obrigatórios
    Dado que eu preencho todos os campos obrigatórios marcados com asteriscos [cite: 317]
    Quando eu clico no botão "Finalizar Cadastro"
    Então meu cadastro deve ser concluído com sucesso

  Cenário: Não permitir campo e-mail com formato inválido
    Quando eu insiro um e-mail com formato inválido [cite: 317]
    E eu tento prosseguir com o cadastro
    Então o sistema deve exibir uma mensagem de erro informando que o formato do e-mail é inválido [cite: 317]

  Cenário: Exibir mensagem de alerta ao tentar cadastrar com campos vazios
    Quando eu tento cadastrar deixando campos obrigatórios vazios [cite: 317]
    Então o sistema deve exibir uma mensagem de alerta [cite: 317]

  Esquema do Cenário: Validação de dados de cadastro
    Dado que eu estou na tela de cadastro do checkout
    Quando eu preencho o campo "nome" com "<nome>"
    E eu preencho o campo "email" com "<email>"
    E eu preencho o campo "cpf" com "<cpf>"
    E eu clico em "Finalizar Cadastro"
    Então o sistema deve "<resultado>"

    Exemplos:
      | nome     | email                | cpf          | resultado                                       |
      | João     | joao@teste.com       | 12345678901  | permitir o cadastro                             |
      | Maria    | maria@.com           | 98765432109  | exibir mensagem de erro de formato de e-mail    |
      |          | outro@teste.com      | 11122233344  | exibir mensagem de alerta de campo vazio        |
      | Pedro    | pedro@teste.com      |              | exibir mensagem de alerta de campo vazio        |