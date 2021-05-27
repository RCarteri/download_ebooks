require 'faker'

module Web
  module Pages
    module Autenticacao
      class Cadastro < SitePrism::Page
        element :input_name, '#register_name'
        element :input_email, '#register_email'
        element :input_senha, '#register_password'
        element :btn_cadastrar, '.btn-accent'
        element :a_cadastro, 'a[href*=register]'

        def abrir_formulario_cadastro
          a_cadastro.gclick
        end

        def generate_user(error=nil)
          Factory::Dynamic.user(error)
        end

        def realizar_cadastro
          user = generate_user
          input_name.gset user[:name]
          input_email.gset user[:email]
          input_senha.gset user[:pass]
          btn_cadastrar.gclick
          user
        end

        def realizar_cadastro_exception(erro)
          user = generate_user(erro)
          input_name.gset user[:name]
          input_email.gset user[:email]
          input_senha.gset user[:pass]
          btn_cadastrar.gclick
          user
        end
      end
    end
  end
end

