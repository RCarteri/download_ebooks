#language:pt
Funcionalidade: Cadastro de tarefas
  Para que eu possa organizar as atividades
  Sendo um usuário cadastrado
  Posso adicionar novas tarefas no painel

  Contexto: Acesso
    Dado que esteja logado
    E que esteja na tela de adicionar tarefas

    @tarefa
    Esquema do Cenario: Nova tarefa
      Quando realizar o cadastro da tarefa
      Então deverá ser apresentado o status da tarefa "<status>"
      Exemplos:
      | status       |
      | Em andamento |

    @tarefa_exception
    Esquema do Cenario: Nova tarefa Exception
      Quando realizar o cadastro da tarefa com o erro "<tipo_erro>"
      Então deverá exibir a mensagem de erro "<mensagem>"
      Exemplos:
        | tipo_erro                       | mensagem                            |
        | Campo nome com menos caracteres | 10 caracteres é o mínimo permitido. |
        | nome em branco                  | Nome é obrigatório.                 |

    @tarefa_duplicada
    Esquema do Cenario: Tarefa duplicada
      Quando realizar o cadastro da tarefa duplicada
      Então deverá apresentar a mensagem de alerta '<mensagem>'
      E deverá ser apresentado somente uma tarefa com o nome cadastrado
      Exemplos:
      | mensagem          |
      | Tarefa duplicada. |
