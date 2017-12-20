class CreateFilaments < ActiveRecord::Migration[5.1]
  def change
    create_table :filaments do |t|
      t.string :color
      t.string :brand
      t.float :fullWeight
      t.string :type

      t.timestamps
    end
  end
end
