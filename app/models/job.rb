
class Job < ApplicationRecord
  validates_presence_of :filament_id, :used_weight, :printer_id, :reference, :duration_mins 
end
