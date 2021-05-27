module Web
  module Sections
    module Headers
      class Painel < SitePrism::Section
        element :h3_name, 'h3[class*=m-t-xs]'
        element :btn_nova_tarefa, '#insert-button'
      end
    end
  end
end
