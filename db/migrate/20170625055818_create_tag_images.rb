class CreateTagImages < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_images do |t|
      t.integer :id_tag
      t.integer :id_image

      t.timestamps
    end
  end
end
