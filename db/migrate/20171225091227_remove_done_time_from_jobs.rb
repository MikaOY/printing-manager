class RemoveDoneTimeFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :duration_mins, :DateTime
  end
end
