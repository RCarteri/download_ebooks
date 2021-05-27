require 'faker'

module Factory
  class Dynamic
    def self.with_error(data, erro)
      case erro
      when 'senha inválida'
        data[:email] = 'ricardo_carteri@hotmail.com'
        data[:pass] = '11111111'
      when 'senha menor'
        data[:pass] = '1'
      when 'senha em branco'
        data[:pass] = ''
      when 'email em branco'
        data[:email] = ''
      when 'usuário não cadastrado'
        data[:email] = 'ricardo@hotmail.com'
      when 'nome em branco'
        data[:name] = ''
      when 'Campo nome com menos caracteres'
        data[:name] = 'menos'
      when 'email já existe'
        data[:email] = 'ricardo_carteri@hotmail.com'
      end
      data
    end

    def self.user(erro)
      user = {
        :name => "Test Automation #{Faker::Name.first_name}",
        :email => "teste.#{Faker::Name.first_name}.#{rand(99)}@mailsac.com",
        :pass => "123456",
        :empresa => Faker::Company.name
      }
      erro ? Dynamic.with_error(user, erro) : user
      # user = Dynamic.with_error(user, error) if error
    end

    def self.tarefa(erro)
      tarefa = {
        :name => Faker::Name.name,
        :data => Faker::Date.forward(days: 50),
        :tag => Faker::Name.last_name
      }
      erro ? Dynamic.with_error(tarefa, erro) : tarefa
    end
  end
end
