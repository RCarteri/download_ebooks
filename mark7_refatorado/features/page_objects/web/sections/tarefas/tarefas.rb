module Web
  module Sections
    module Tarefas
      class Tarefas < SitePrism::Section
        element :status_atividade, 'span[class*=label]'
        element :nome_atividade, 'a[href="#"]'
      end
    end
  end
end
