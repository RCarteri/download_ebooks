require_relative '../../sections/headers/painel.rb'
require_relative '../../sections/nav/menu.rb'
require_relative '../../sections/tarefas/tarefas.rb'

module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'
        section :painel, Web::Sections::Headers::Painel, '.panel-body'
        section :menu, Web::Sections::Nav::Menu, '.luna-nav'
        sections :tarefas, Web::Sections::Tarefas::Tarefas, '#tasks tbody tr'

        element :btn_nova_tarefa, '#insert-button'
        element :input_nome, '#title'
        element :input_data, '#dueDate'
        element :input_tag, 'div[class*=bootstrap-tagsinput] input'
        element :btn_cadastrar, '#form-submit-button'
        element :div_alerta, '.alert-warn'
        element :btn_voltar, '#form-cancel-button'

        def btn_tarefas
          btn_nova_tarefa.gclick
        end

        def generate_tarefa(erro=nil)
          Factory::Dynamic.tarefa(erro)
        end

        def adicionar_tarefa(nome_duplicado=nil)
          tarefa = generate_tarefa
          tarefa[:name] = nome_duplicado if nome_duplicado
          input_nome.gset tarefa[:name]
          input_data.gset tarefa[:data]
          input_tag.gset tarefa[:tag]
          btn_cadastrar.gclick
          tarefa
        end

        def adicionar_tarefa_exception(erro)
          tarefa = generate_tarefa(erro)
          input_nome.gset tarefa[:name]
          input_data.gset tarefa[:data]
          input_tag.gset tarefa[:tag]
          btn_cadastrar.gclick
        end

        def voltar_home
          btn_voltar.gclick
        end

        def comparar_nome_tarefas(nome_tarefa)
          count = 0
          tarefas.each do |tarefa|
            count += 1 if tarefa.nome_atividade.text == nome_tarefa
          end
          count
        end
      end
    end
  end
end
