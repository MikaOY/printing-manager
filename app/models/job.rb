
class Job < ApplicationRecord
  validates_presence_of :filament_id, :used_weight, :duration_mins, :printer_id, :reference
end
