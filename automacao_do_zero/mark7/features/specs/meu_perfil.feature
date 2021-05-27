# language:pt
    Funcionalidade: Meu perfil
    Para que possa manter os dados atualizados
    Sendo um usuário que fez o cadastro simplificado
    Poderá completar o cadastro do meu perfil

    # dock string outra forma de mostrar mensagem com mais de uma linha

    @login @logout
    Esquema do Cenario: Atualizar meu perfil
        Dado que acesse o perfil
        Quando completar o cadastro com a empresa "<empresa>" e cargo "<cargo>"
        Então deverá ser exibida a mensagem de atualização cadastral "Perfil atualizado com sucesso."
        Exemplos:
            | email                       | senha  | empresa   | cargo      |
            | marcos@hotmail.com          | 123456 | Yahoo     | Developer  |
            | ricardo_carteri@hotmail.com | 123456 | Google    | QA         |
            | beto@hotmail.com            | 123456 | Microsoft | CEO        |
            | carlos@hotmail.com          | 123456 | Linkedin  | CTO        |
            | feb@hotmail.com             | 123456 | Facebook  | Estagiario |