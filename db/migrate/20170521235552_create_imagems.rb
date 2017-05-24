class CreateImagems < ActiveRecord::Migration[5.0]
  def change
    create_table :imagems do |t|
      t.string :nome
      t.string :url
      t.float :tamanho
      t.bigint :id_usuario, :null => false
      t.boolean :publico, :default => false
      t.string :extensao
      t.bigint :id_galeria, :null => false
      
      t.timestamps
    end
  end
end
