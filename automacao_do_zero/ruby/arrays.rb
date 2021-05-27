# Criando um array
avangers = Array.new

# Adicionando valores no final do array
avangers.push 'Iron Man' # 0
avangers.push 'SpiderMan' # 1
avangers.push 'Hulk' # 2

puts avangers
puts avangers[0]

def imprime_hulk avangers
    avangers.each do |a|
        puts a if a == 'Hulk'
    end
end
imprime_hulk avangers