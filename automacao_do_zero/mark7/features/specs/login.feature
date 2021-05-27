#language: pt

Funcionalidade: Login
  Para que eu possa cadastrar e gerenciar minhas atividades
  Sendo um usuario cadastrado
  Posso acessar o sistema com meu email e minha senha

  Contexto: Home
    Dado que acesse o sistema
      
  @sprint1 @logout
  Cenario: Usuario autenticado
    Quando realizar login com o email "ricardo_carteri@hotmail.com" e a senha "123456"
    Então deverá ser exibida a mensagem de boas vindas "Olá, Ricardo"
  
  @tentativa_login
  Esquema do Cenario: Tentativa de Login
      Quando realizar login com o email "<email>" e a senha "<senha>"
      Então deverá ser exibida a mensagem de alerta "<mensagem>"

      Exemplos:
          | email                       | senha  | mensagem                    |
          | ricardo_carteri@hotmail.com | abcabc | Senha inválida.             |
          | ricardohotmail.com          | 123456 | Email incorreto ou ausente. |
          |                             | 123456 | Email incorreto ou ausente. |
          | ricardo_carteri@hotmail.com |        | Senha ausente.              |
          | ricardo@hotmail.com         | 123456 | Usuário não cadastrado.     |

  # @sprint2
  # Cenario: Bloqueia após 5 tentativas
  #   Dado que a quantidade máxima de login é de 5 tentativas
  #   Quando realizar login com o email "natalia.rocco@hotmail.com" e a senha "abcabc"
  #   Então deverá ser exibida a mensagem de alerta "Usuário bloqueado. Por favor aguarde 10 segundos, e tente novamente."