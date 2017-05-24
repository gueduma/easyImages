class AddIdGaleriaToImagems < ActiveRecord::Migration[5.0]
  def change
    add_column :imagems, :id_galeria, :bigint
  end
end
