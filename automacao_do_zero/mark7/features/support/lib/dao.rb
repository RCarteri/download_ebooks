require 'mongo'

class DAO
    attr_accessor :client

    Mongo::Logger.logger = Logger.new('log/mongo.log')

    def initialize
        # mongodb://usuario:senha@servidor:porta/banco_de_dados
        str_con = 'mongodb://127.0.0.1:27017/markdb'
        # str_con = 'mongodb://aluno:qaninja@ds225078.mlab.com:27017/mongodb'
        @client = Mongo::Client.new(str_con)
    end
    
    def obter_usuario email
        users = @client[:users]
        users.find('profile.email' => email).first
    end

    def buscar_tarefa name, email
        user = obter_usuario(email)
        tasks = @client[:tasks]
        tasks.find('title' => name, 'createdBy' => user[:_id])
    end

    def remover_tarefas name, email
        user = obter_usuario(email)
        puts user
        tasks = @client[:tasks]
        puts tasks
        tasks.delete_many('title' => name, 'createdBy' => user[:_id]) # ou :title, .detele_many deleta várias .delete_one deleta somente uma
        puts 'aaaaaaaaaaaaaaaaaaaaa'
    end
end