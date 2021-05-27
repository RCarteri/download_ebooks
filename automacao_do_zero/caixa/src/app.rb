class Conta
    attr_accessor :saldo, :mensagem_saida

    def saque valor
        if valor > 700
            @mensagem_saida = 'Valor máximo por transação deve ser de R$ 700!'
        elsif @saldo > valor
            @saldo -= valor
            @mensagem_saida = 'Saque com sucesso. Muito obrigado!'
        else
            @mensagem_saida = 'Saldo insuficiente para saque.'
        end
    end
end