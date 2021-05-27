# Criação de um método
def welcome
    puts 'Bem vindo ao Curso Automação do zero'
end
welcome

# Método que recebe parâmetros
def mostra_nome nome
    puts nome
end
mostra_nome 'Fernando'

# Fazendo uma conta dentro do método, sempre vai retornar a última linha
def soma_valor v1, v2
    v1 + v2
end
puts soma_valor 5,4