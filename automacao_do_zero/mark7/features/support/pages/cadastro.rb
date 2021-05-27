class CadastroPage
    include Capybara::DSL

    def acessa
        # A página do site está definida no env.rb
        visit '/register'
    end

    def cadastra nome, email, senha
        find('#register_name').set nome
        find('#register_email').set email
        find('#register_password').set senha
        find('.btn-accent').click
    end

    def alerta
        find('.col-md-12')
    end
end