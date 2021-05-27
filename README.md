# Automação do ambiente Mark7 da QA Ninja
Neste diretório estão os vídeos das aulas do curso Automação do Zero da [QANinja][1] junto com os arquivos das aulas.

Neste projeto usaremos o ambiente do [Mark7][2] para acompanhar as aulas do Fernando Papito.

1. Introdução a automação [Vídeo][3] 
2. Automação WEB pt 1 [Vídeo][4]
3. Automação WEB pt 2 [Vídeo][5]

[1]: https://qaninja.academy/
[2]: https://medium.com/@papito/preparando-o-mark7-para-treinar-automa%C3%A7%C3%A3o-1f72c1fe4946
[3]: https://mega.nz/file/184UxYKQ#bBj-pBmPh5wQjyuwRBVLCxh1bOT8QzzOy25QcRZJq2k
[4]: https://mega.nz/file/4wJTVaaJ#kEYbwPeUpcsRUtNibv7pn6UGWapHk2s3u3INGryg8_g
[5]: https://mega.nz/file/gsxAxIJB#tRADonXu1DBFLCKNWCLddp_z3R5ukbYRgBSxYkf9Zuk

Também foi feita a [refatoração][refatoracao] da automação de testes feito no [curso Automação do Zero][automacao] usando o SitePrism e gerando massas de dados automaticamente com a biblioteca [faker][2].

Obs. Para funcionar o cenário de login, primeiramente deverá ser criado um usuário no [ambiente][3] e posto os dados no arquivo [prd.yml][4]

A seguir um exemplo da automação dos cenários:
- Login e suas exceptions
- Cadastro de usuário e suas exceptions
- Alterar perfil e suas exceptions
- Cadastrar tarefa e suas exceptions
- Cadastrar tarefa duplicada

O site do mark7 possui um bug, onde ao cadastrar uma tarefa com o mesmo nome ele informa a mensagem "Tarefa duplicada" mas mesmo assim o site cadastra. Isso é mostrado no último step de tarefa duplicada, onde em vez de retornar somente uma tarefa com o mesmo nome ele retorna duas.
![gif_mark7][5]

[1]: mark7_refatorado
[2]: https://github.com/faker-ruby/faker
[3]: https://medium.com/@papito/preparando-o-mark7-para-treinar-automa%C3%A7%C3%A3o-1f72c1fe4946
[4]: mark7_refatorado/features/support/factory/static/prd.yml
[5]: mark7_refatorado/mark7_refatorado.gif
[automacao]: automacao_do_zero
[refatoracao]: mark7_refatorado