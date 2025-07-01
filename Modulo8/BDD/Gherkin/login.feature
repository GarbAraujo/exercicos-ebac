# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na tela de login

  Esquema do Cenário: Tentativas de Login
    Quando eu insiro o "<email>" e "<senha>" nos respectivos campos e clico no botão "Login"
    Então o sistema deve "<resultado_esperado>"

    Exemplos:
      | email               | senha         | resultado_esperado                               |
      | usuario@valido.com  | Senha123      | ser direcionado para a tela de checkout          |
      | usuario@invalido.com| SenhaInvalida | exibir a mensagem de alerta "Usuário ou senha inválidos" |
      | email_errado        | Senha123      | exibir a mensagem de alerta "Usuário ou senha inválidos" |
      | usuario@valido.com  | senha_errada  | exibir a mensagem de alerta "Usuário ou senha inválidos" |
