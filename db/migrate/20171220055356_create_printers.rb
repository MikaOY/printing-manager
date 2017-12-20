class CreatePrinters < ActiveRecord::Migration[5.1]
  def change
    create_table :printers do |t|
      t.string :name
      t.float :startupCost

      t.timestamps
    end
  end
end
