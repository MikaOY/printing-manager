
class Job < ApplicationRecord
  validates_presence_of :filament_id, :usedWeight, :duration_mins, :printer_id, :reference
end
