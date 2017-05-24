class CreateGaleria < ActiveRecord::Migration[5.0]
  def change
    create_table :galeria do |t|
      t.string :nome
      t.bigint :id_usuario

      t.timestamps
    end
  end
end
