module Web
  module Pages
    module Autenticacao
      class Login < SitePrism::Page
        set_url '/login'
        element :input_email, '#login_email'
        element :input_senha, '#login_password'
        element :btn_logar, 'button[id*=btnLogin]'
        element :alert_error, '.col-md-12'

        def generate_user(error=nil)
          Factory::Dynamic.user(error)
        end

        def realizar_login
          @user = Factory::Static.static_data('valid_user')
          input_email.gset @user['email']
          input_senha.gset @user['pass']
          btn_logar.gclick
          @user
        end

        def realizar_login_exception(erro)
          @user = generate_user(erro)
          input_email.gset @user[:email]
          input_senha.gset @user[:pass]
          btn_logar.gclick
          @user
        end
      end
    end
  end
end
