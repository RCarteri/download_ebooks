class LoginPage
    include Capybara::DSL

    def acessa
        # A página do site está definida no env.rb
        visit '/login'
    end

    def alerta
        find('.alert-login')
    end

    def logar email, senha
        find('#login_email').set email
        find('input[name=password').set senha
        find('button[id*=btnLogin]').click
    end
end