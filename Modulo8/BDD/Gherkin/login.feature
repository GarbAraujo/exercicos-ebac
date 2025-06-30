# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP [cite: 312]
  Quero fazer o login (autenticação) na plataforma [cite: 312]
  Para visualizar meus pedidos [cite: 312]

  Contexto:
    Dado que estou na tela de login [cite: 312]

  Esquema do Cenário: Tentativas de Login
    Quando eu insiro o "<email>" no campo de email [cite: 312]
    E eu insiro a "<senha>" no campo de senha [cite: 312]
    E eu clico no botão "Login"
    Então o sistema deve "<resultado_esperado>"

    Exemplos:
      | email                 | senha         | resultado_esperado                                       |
      | usuario@valido.com    | Senha123      | ser direcionado para a tela de checkout                  | [cite: 312]
      | usuario@invalido.com  | SenhaInvalida | exibir a mensagem de alerta "Usuário ou senha inválidos" | [cite: 312]
      | email_errado          | Senha123      | exibir a mensagem de alerta "Usuário ou senha inválidos" | [cite: 312]
      | usuario@valido.com    | senha_errada  | exibir a mensagem de alerta "Usuário ou senha inválidos" | [cite: 312]