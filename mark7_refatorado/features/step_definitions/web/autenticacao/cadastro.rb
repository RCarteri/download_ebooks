Dado ('que abra o formulário de cadastro') do
  @cadastro = $web_pages.cadastro
  @cadastro.abrir_formulario_cadastro
end

Quando('realizar cadastro') do
  @user = @cadastro.realizar_cadastro
end

Quando('realizar cadastro com erro {string}') do |erro|
  @cadastro.realizar_cadastro_exception(erro)
end
