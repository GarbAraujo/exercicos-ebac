# language: pt
Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na tela de cadastro do checkout

  Cenário: Cadastro com todos os dados obrigatórios
    Dado que eu preencho todos os campos obrigatórios marcados com asteriscos
    Quando eu clico no botão "Finalizar Cadastro"
    Então meu cadastro deve ser concluído com sucesso

  Cenário: Não permitir campo e-mail com formato inválido
    Quando eu insiro um e-mail com formato inválido
    E eu tento prosseguir com o cadastro
    Então o sistema deve exibir uma mensagem de erro informando que o formato do e-mail é inválido

  Cenário: Exibir mensagem de alerta ao tentar cadastrar com campos vazios
    Quando eu tento cadastrar deixando campos obrigatórios vazios
    Então o sistema deve exibir uma mensagem de alerta

  Esquema do Cenário: Validação de dados de cadastro
    Dado que eu estou na tela de cadastro do checkout
    Quando eu preencho os campos "<nome>", "<email>", "<cpf>" e clico em "Finalizar Cadastro"
    Então o sistema deve exibir o "<resultado>"

    Exemplos:
      | nome     | email                | cpf          | resultado                                       |
      | João     | joao@teste.com       | 12345678901  | permitir o cadastro                             |
      | Maria    | maria@.com           | 98765432109  | exibir mensagem de erro de formato de e-mail    |
      |          | outro@teste.com      | 11122233344  | exibir mensagem de alerta de campo vazio        |
      | Pedro    | pedro@teste.com      |              | exibir mensagem de alerta de campo vazio        |
