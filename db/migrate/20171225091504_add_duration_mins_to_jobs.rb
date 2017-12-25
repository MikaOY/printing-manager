class AddDurationMinsToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :duration_mins, :integer
  end
end
