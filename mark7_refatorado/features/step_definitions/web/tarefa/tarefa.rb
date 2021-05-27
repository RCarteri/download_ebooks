Dado('que esteja na tela de adicionar tarefas') do
  @home.btn_tarefas
end

Quando("realizar o cadastro da tarefa") do
  @tarefa = @home.adicionar_tarefa
  @tarefa_section = @home.tarefas
end

Quando("realizar o cadastro da tarefa com o erro {string}") do |erro|
  @home.adicionar_tarefa_exception(erro)
end

Quando("realizar o cadastro da tarefa duplicada") do
  step 'realizar o cadastro da tarefa'
  step 'que esteja na tela de adicionar tarefas'
  @home.adicionar_tarefa(@tarefa[:name])
end

Então("deverá ser apresentado o status da tarefa {string}") do |status|
  expect(@tarefa_section.first.status_atividade.text).to have_content status
end

Então("deverá exibir a mensagem de erro {string}") do |mensagem|
  expect(@home.div_alerta.text).to have_content mensagem
end

Então("deverá apresentar a mensagem de alerta {string}") do |mensagem|
  expect(@home.div_alerta.text).to have_content mensagem
end

Então("deverá ser apresentado somente uma tarefa com o nome cadastrado") do
  @home.voltar_home
  count = @home.comparar_nome_tarefas(@tarefa[:name])
  expect(count).to eql 1
end



