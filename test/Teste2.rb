class Teste2
    attr_accessor :bolacha
    @@imposto = 1.3
    @bolacha = 3
    
    def self.biscoito
        @bolacha = 9
        @@imposto = 1.9
    end
    
    def biscoito
        @bolacha = 6
    end
end

#Teste2.imposto
comida = Teste2.new
comida.bolacha = 5
Teste2.biscoito
comida.biscoito
puts comida.bolacha
puts Teste2.class_variable_get(:@@imposto)
puts Teste2.instance_variable_get(:@bolacha)