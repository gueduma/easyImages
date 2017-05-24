#require 'active_record'
class Imagem < ApplicationRecord
    mount_uploader :galerias, ImagemUploader

end
