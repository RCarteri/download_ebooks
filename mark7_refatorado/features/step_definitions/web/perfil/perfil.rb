Dado("que acesse o perfil") do
  @menu = @home.menu
  @menu.acessar_perfil
  @perfil = $web_pages.perfil
end

Quando("completar o cadastro com o cargo {string}") do |cargo|
  @perfil.atualizar_perfil(cargo)
end

Quando("completar o cadastro com o erro {string}") do |erro|
  @perfil.atualizar_perfil_exception(erro)
end

Então("deverá ser exibida a mensagem {string}") do |mensagem|
  expect(@perfil.alert.text).to have_content mensagem
end
