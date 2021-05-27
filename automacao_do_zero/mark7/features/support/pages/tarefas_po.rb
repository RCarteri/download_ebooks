class TarefasPage
    include Capybara::DSL
    def painel
        find('#task-board')
    end

    def buscar_tr name
        find('#tasks tbody tr', text: name)
    end

    def alerta
        find('.alert-warn').text
    end

    def cadastrar name, data
        find('#insert-button').click
        # Vai procurar os elementos somente no escopo que tiver o id add-task
        within('#add-task') do
            # Preenche o formulario onde o id/name é title e dueDate
            # se não tiver id/name usa CSS selector como no formulário de login
            fill_in 'title', with: name
            fill_in 'dueDate', with: data

            # Clicar no botão que tem o nome Cadastrar
            # click_link para elementos <a>
            # click_on para elementos <span><div><table> ou qualquer coisa
            click_button 'Cadastrar'
        end
    end
end