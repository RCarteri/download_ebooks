# Toda vez que encontrar um cenário com a tag logout executará esse código

Before do
    @login_page = LoginPage.new
    @nav = Navbar.new
    @side = SlideBar.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new
    @cadastro_page = CadastroPage.new
    @dao = DAO.new
    

    # Definir resolução da tela de teste, usar sempre o mínimo
    page.current_window.resize_to(1280, 800)
end

After('@logout') do
    @nav.sair
end

Before('@login') do
    @usuario = {email:'ricardo_carteri@hotmail.com', senha:'123456'}
    @login_page.acessa
    @login_page.logar(@usuario[:email], @usuario[:senha])
end