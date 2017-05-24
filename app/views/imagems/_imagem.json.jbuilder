json.extract! imagem, :id, :nome, :url, :data_upload, :tamanho, :id_usuario, :publico, :data_modificacao, :extensao, :created_at, :updated_at
json.url imagem_url(imagem, format: :json)
