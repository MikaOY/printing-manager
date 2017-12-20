class CreatePrintJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :print_jobs do |t|
      t.references :filament
      t.float :usedWeight
      t.timestamp :doneTime
      t.references :printer
      t.string :reference

      t.timestamps
    end
  end
end
