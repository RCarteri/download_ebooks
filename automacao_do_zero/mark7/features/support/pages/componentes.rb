class Navbar
    include Capybara::DSL
    def sair
        find('.navbar a[href*=dropdown]').click
        find('.navbar a[href$=logout]').click
    end
end

class SlideBar
    include Capybara::DSL
    def acessa_perfil
        # Clicar no link pelo nome que aparece na tela
        within('aside[class=navigation]') do
            click_link 'Perfil'
        end
    end
end