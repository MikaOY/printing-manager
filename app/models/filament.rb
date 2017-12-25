
class Filament < ApplicationRecord
  validates_presence_of :color, :brand, :full_weight, :material
end
