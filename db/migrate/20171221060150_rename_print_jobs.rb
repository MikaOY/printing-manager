 
class RenameJobs < ActiveRecord::Migration[5.1]
  def change
    rename_table :jobs, :jobs
  end 
end
