require '/home/ubuntu/workspace/app/models/imagem'

img = Imagem.new id:1, nome:"teste1"

File.open(Dir.pwd + "/public/imagem1.jpg") do |f|
  img.avatar = f
end

puts img.avatar.file.nil?

img.save!
puts img.avatar.url # => '/url/to/file.png'
puts img.avatar.current_path # => 'path/to/file.png'
puts img.avatar_identifier # => 'file.png'
