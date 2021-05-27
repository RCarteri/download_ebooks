class PerfilPage
    include Capybara::DSL
    def completa_cadastro empresa, cargo
        find('#profile-company').set empresa
        combo = find('select[name$=job]')
        # Buscar somente dentro do select pelo texto
        combo.find('option', text: cargo).select_option

        # Capybara busca um elemento button com o text Salvar
        click_button 'Salvar'
    end
    
    def alerta
        find('.panel-c-success')     
    end    
end