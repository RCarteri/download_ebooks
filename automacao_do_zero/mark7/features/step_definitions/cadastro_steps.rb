Dado('que esteja no formulário de cadastro') do
    @cadastro_page.acessa
end

Quando('realizar o cadastro com o nome {string}, email {string} e senha {string}') do |nome, email, senha|
    @cadastro_page.cadastra nome, email, senha
end

Então('deverá exibir a mensagem de boas vindas {string}') do |mensagem|
    expect(@tarefas_page.painel).to have_content mensagem
end

Então('deverá exibir a mensagem de alerta {string}') do |mensagem|
    expect(@cadastro_page.alerta).to have_content mensagem
end