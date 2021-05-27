Quando('realizar login') do
  @user = @login.realizar_login
end

Quando('realizar login com erro {string}') do |erro|
  @login.realizar_login_exception(erro)
end

Então("deverá exibir o nome do usuário no painel") do
  @home = $web_pages.home
  @painel = @home.painel
  expect(@painel.h3_name.text).to have_content (/#{@user[:name]}/i)
end

Então('deverá exibir a mensagem de alerta {string}') do |mensagem|
  # esperar o elemento aparecer @login.alert_error(wait: $global_timeout)
  expect(@login.alert_error.text).to have_content mensagem
end
