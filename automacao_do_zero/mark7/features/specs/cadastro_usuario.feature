#language: pt
Funcionalidade: Cadastro de usuários 
    Sendo um visitante 
    Posso fazer meu cadastro
    Para poder gerenciar minhas tarefas

    Contexto: Formulário
        Dado que esteja no formulário de cadastro
        
        Esquema do Cenário: Cadastro
            Quando realizar o cadastro com o nome "<nome>", email "<email>" e senha "<senha>"
            Então deverá exibir a mensagem de boas vindas "<mensagem>"

            Exemplos:
                | nome    | email               | senha  | mensagem     |
                | Marcos | asuaa@hotmail.com | 123456 | Marcos |
        
        Esquema do Cenário: Campos obrigatórios
            Quando realizar o cadastro com o nome "<nome>", email "<email>" e senha "<senha>"
            Então deverá exibir a mensagem de alerta "<mensagem>"

            Exemplos:
                | nome    | email             | senha  | mensagem             |
                |         | asaaaaa@teste.com | 123456 | Nome é obrigatório.  |
                | Ricardo |                   | 123456 | Email é obrigatório. |
                | Ricardo | asaaaaa@teste.com |        | Informe uma senha.   |