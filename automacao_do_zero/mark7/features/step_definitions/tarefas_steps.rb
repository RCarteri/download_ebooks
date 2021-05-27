Dado('que o nome da tarefa é {string}') do |nome_tarefa|
    @nome_tarefa = nome_tarefa
    @dao.remover_tarefas(@nome_tarefa, @usuario[:email])
end

Dado('a data de finalização é {string}') do |data_finalizacao|
    @data_tarefa = data_finalizacao
end

Dado('a tag da tarefa é:') do |tags|
    #converter a tabela de tags em hash
    @tags = tags.hashes
end

Dado('a tarefa já foi cadastrada') do
    # REaproveitando o cenário já que estaria repetindo o código pois esse também cadastra uma tarefa
    steps %(
        Quando realizar o cadastro da tarefa
    )
end

Quando('realizar o cadastro da tarefa') do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end

Então('deverá ser apresentado o status da tarefa {string}') do |status_tarefa|
    expect(
            @tarefas_page.buscar_tr(@nome_tarefa)
        ).to have_content status_tarefa
end

Então('deverá apresentar a mensagem {string}') do |mensagem|
    expect(@tarefas_page.alerta).to eql mensagem
end

Então('deverá ser apresentado somente {int} tarefa com o nome cadastrado') do |quantidade|
    res = @dao.buscar_tarefa(@nome_tarefa, @usuario[:email])
    expect(res.count).to eql quantidade
end