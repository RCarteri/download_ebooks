# Dado('que estou logado com {string} e {string}') do |email, senha|
#   @page.login.load
#   @page.login.logar(email, senha)
# end

# Dado('acesso o meu perfil') do
#   @component.side.perfil
#   # clik_link pois é um elemento do tipo A
# end

# Quando('completo o meu cadastro com {string} e {string}') do |empresa, cargo|
#   @page.perfil.completa(empresa, cargo)
# end

# Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
#   expect(@page.perfil.alerta.text).to eql mensagem
#   sleep 2
# end


# Dado("que estou autenticado com {string} e {string}") do |email, senha|
#     @page.login.load
#     @page.login.logar(email, senha)
# end

# Dado("eu trabalho na {string} com o {string}") do |empresa, cargo|
#     @perfil = { empresa: empresa, cargo: cargo } 
# end

# Quando("faço  a atualização do meu cadastro") do
#     @component.side.perfil
#     @page.perfil.completa(@perfil)
# end

# Então("devo ver a seguinte mensagem: {string}") do |mensagem|
#     expect(@page.perfil.alerta.text).to eql mensagem
# end

Dado ('que acesse o perfil') do
    @side.acessa_perfil
end

Quando('completar o cadastro com a empresa {string} e cargo {string}') do |empresa, cargo|
    @perfil_page.completa_cadastro empresa, cargo
end

Então('deverá ser exibida a mensagem de atualização cadastral {string}') do |mensagem|
    expect(@perfil_page.alerta).to have_content mensagem
end