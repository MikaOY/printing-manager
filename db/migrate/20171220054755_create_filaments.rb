class CreateFilaments < ActiveRecord::Migration[5.1]
  def change
    create_table :filaments do |t|
      t.string :color
      t.string :brand
      t.float :full_weight
      t.string :material

      t.timestamps
    end
  end
end
