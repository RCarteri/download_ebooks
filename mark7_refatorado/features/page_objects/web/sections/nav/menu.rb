module Web
  module Sections
    module Nav
      class Menu < SitePrism::Section
        element :perfil, 'a[href="/user_settings"]'

        def acessar_perfil
          perfil.gclick
        end
      end
    end
  end
end
