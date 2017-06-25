=begin
valor = 3
if(valor == 1...3)
    puts "true"
else
    puts "false"
end

for i in (1...3)
    x = i
end
puts x

y = "valor"

y ||= "Valor"

puts y

resultado = 10 ** 2
puts('o resultado é: #{resultado}')

simbolo1 = :abc
simbolo2 = :abc

puts simbolo1 == simbolo2
puts simbolo1.object_id()
puts simbolo2.object_id()
=end
puts Dir.pwd
puts File::exists?( Dir.pwd + "/public/robots.txt" )
=begin
somefile = File.open(Dir.pwd + "/public/robots.txt", "w")
somefile.puts "Hello file!"
somefile.close
=end
=begin
content = File.open(Dir.pwd + "/public/imagem1.jpg") {|file| file.read}
puts content
=end
fname = "sample.txt"
somefile = File.open(Dir.pwd + "/public/" + fname, "w")
somefile.puts "Hello file!"
somefile.close