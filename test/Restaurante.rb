class Restaurante
        attr_accessor :nome, :idade
        def initialize nome
            @nome = nome
            @idade = 21
        end
        
        def compra *produtos
            puts produtos.size
        end
        
        def paga_conta2(dinheiro, transfere)
            if block_given?
                puts "Transfere #{yield dinheiro} reais de #{transfere[:de]} para #{transfere[:para]}"
            else
                puts "Transfere #{dinheiro} reais de #{transfere[:de]} para #{transfere[:para]}"
            end
        end
        
        def paga_conta(hash, transfere, &calculo)
            dinheiro = 10
            #transfere = { :de => "Guilherme", :para => "Jean"}
            puts "Transfere #{calculo.call(dinheiro)} reais de #{transfere[:de]} para #{transfere[:para]}"
        end
        
        def self.metodo_classe
            @inteiro += 1
            puts @inteiro
        end
end

rst = Restaurante.new "Guilherme"

#rst.paga_conta2 50.0, { :de => "Guilherme", :para => "Jean" }

#transfere = {:de => "Guilherme", :para => "Jean"}

rst.paga_conta("abc", :de => "Guilherme", :para => "Jean")  { |n| n*4 }
                                                  
# {:de => "Guilherme", :para => "Jean"}

def verifica_idade(idade)
  unless idade > 18
    raise TypeError,
    "Você precisa ser maior de idade para jogar jogos violentos." 
  end
  
  return "Maior de idade. #{idade} anos."
end

begin
    msg = "abc"
    msg = verifica_idade(19)
rescue ArgumentError, TypeError => e
    puts "Idade informada não pode ser menor que 18 anos erro #{e}"
end
    puts msg

