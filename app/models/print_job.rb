
class PrintJob < ApplicationRecord
  validates_presence_of :filament_id, :usedWeight, :doneTime, :printer_id, :reference
end
