require 'faker'

module Web
  module Pages
    module Perfil
      class Perfil < SitePrism::Page
        element :input_nome, '#profile-name'
        element :input_email, '#profile-email'
        element :input_empresa, '#profile-company'
        element :select_cargo, 'select[name$=job]'
        element :btn_salvar, '#form-submit-button'
        element :select_cargo, 'select[name$=job]'
        element :alert, 'div[class^="alert"]'

        def generate_user(error=nil)
          Factory::Dynamic.user(error)
        end

        def atualizar_perfil(cargo)
          user = generate_user
          input_empresa.gset user[:empresa]
          select_cargo.find('option', text: cargo).select_option
          btn_salvar.gclick
        end

        def atualizar_perfil_exception(erro)
          user = generate_user(erro)
          input_nome.gset user[:name]
          input_email.gset user[:email]
          input_empresa.gset user[:empresa]
          select_cargo.find('option', text: 'QA').select_option
          btn_salvar.gclick
        end
      end
    end
  end
end
