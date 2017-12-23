class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :filaments, :type, :material
  end
end
