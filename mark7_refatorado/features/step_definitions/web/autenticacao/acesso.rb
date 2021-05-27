Dado('que esteja na tela de login') do
  @login = $web_pages.login
  @home = $web_pages.home
  @login.load
end

Dado("que esteja logado") do
  steps %{
    Dado que esteja na tela de login
    Quando realizar login
    Então deverá exibir o nome do usuário no painel
  }
end
