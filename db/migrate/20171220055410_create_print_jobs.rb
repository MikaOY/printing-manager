class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.references :filament
      t.float :usedWeight
      t.timestamp :duration_mins
      t.references :printer
      t.string :reference

      t.timestamps
    end
  end
end
