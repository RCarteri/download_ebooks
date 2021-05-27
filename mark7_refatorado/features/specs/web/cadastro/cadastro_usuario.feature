#language: pt
Funcionalidade: Cadastro de usuários
  Sendo um visitante
  Posso fazer meu cadastro
  Para poder gerenciar minhas tarefas

  Contexto: Formulário
    Dado que esteja na tela de login
    E que abra o formulário de cadastro

    @cadastrar
    Cenário: Cadastro
      Quando realizar cadastro
      Então deverá exibir o nome do usuário no painel

    @cadastrar_exception
    Esquema do Cenário: Cadastro Exception
      Quando realizar cadastro com erro "<tipo_erro>"
      Então deverá exibir a mensagem de alerta "<mensagem>"

      Exemplos:
        | tipo_erro       | mensagem                                    |
        | nome em branco  | Nome é obrigatório.                         |
        | email em branco | Email é obrigatório.                        |
        | email já existe | Email já existe                             |
        | senha em branco | Informe uma senha.                          |
        | senha menor     | Sua senha deve ter pelo menos 6 caracteres. |
