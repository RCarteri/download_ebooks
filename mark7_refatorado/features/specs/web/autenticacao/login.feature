#language: pt

Funcionalidade: Login
  Para que eu possa cadastrar e gerenciar minhas atividades
  Sendo um usuario cadastrado
  Posso acessar o sistema com meu email e minha senha

  Contexto: Acesso
    Dado que esteja na tela de login

  @login
  Cenario: Login
    Quando realizar login
    Então deverá exibir o nome do usuário no painel

  @login_exception
  Esquema do Cenario: Login Exception
      Quando realizar login com erro "<tipo_erro>"
      Então deverá exibir a mensagem de alerta "<mensagem>"

      Exemplos:
          | tipo_erro              | mensagem                               |
          | senha inválida         | Senha inválida.                        |
          | senha menor            | Senha deve ter no mínimo 6 caracteres. |
          | email em branco        | Email incorreto ou ausente.            |
          | senha em branco        | Senha ausente.                         |
          | usuário não cadastrado | Usuário não cadastrado.                |
