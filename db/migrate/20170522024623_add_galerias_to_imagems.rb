class AddGaleriasToImagems < ActiveRecord::Migration[5.0]
  def change
    add_column :imagems, :galerias, :string
  end
end
