# language:pt
Funcionalidade: Meu perfil
Para que possa manter os dados atualizados
Sendo um usuário que fez o cadastro simplificado
Poderá completar o cadastro do meu perfil

  Contexto: Acesso
    Dado que esteja logado
    E que acesse o perfil

    @atualizar_perfil
    Esquema do Cenario: Atualizar perfil
      Quando completar o cadastro com o cargo '<cargo>'
      Então deverá ser exibida a mensagem '<mensagem>'
      Exemplos:
        | cargo      | mensagem                       |
        | Developer  | Perfil atualizado com sucesso. |
        | QA         | Perfil atualizado com sucesso. |
        | CEO        | Perfil atualizado com sucesso. |
        | CTO        | Perfil atualizado com sucesso. |
        | Estagiario | Perfil atualizado com sucesso. |

    @atualizar_perfil_exception
    Esquema do Cenario: Atualizar perfil Exception
      Quando completar o cadastro com o erro '<tipo_erro>'
      Então deverá ser exibida a mensagem '<mensagem>'
      Exemplos:
        | tipo_erro       | mensagem                     |
        | nome em branco  | Nome completo é obrigatório. |
        | email em branco | Email é obrigatório.         |


