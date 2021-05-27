#language:pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar as atividades
    Sendo um usuário cadastrado
    Posso adicionar novas tarefas no painel

    @smoke @login @logout
    Cenario: Nova tarefa
        Dado que o nome da tarefa é "Fazer compras"
        E a data de finalização é "20/08/2018"
        E a tag da tarefa é:
        | tag          |
        | Compras      |
        | Supermercado |
        | Ketchup      |
        Quando realizar o cadastro da tarefa
        Então deverá ser apresentado o status da tarefa "Em andamento"
        E deverá ser apresentado somente 1 tarefa com o nome cadastrado

    @tentativa_cadastro @login @logout
    Esquema do Cenario: Tentativa de cadastro
        Dado que o nome da tarefa é "<nome>"
        E a data de finalização é "<data>"
        Quando realizar o cadastro da tarefa
        Então deverá apresentar a mensagem "<mensagem>"

        Exemplos:
        | nome       | data                | mensagem                            |
        | Ler        | 21/08/2019          | 10 caracteres é o mínimo permitido. |
        |            | 22/05/2020          | Nome é obrigatório. |

    @tarefa_duplicada @login @logout    
    Cenario: Tarefa duplicada
        Dado que o nome da tarefa é "Ler um figo"
        E a data de finalização é "21/08/2018"
        Mas a tarefa já foi cadastrada
        Quando realizar o cadastro da tarefa
        Então deverá apresentar a mensagem "Tarefa duplicada."
        E deverá ser apresentado somente 1 tarefa com o nome cadastrado