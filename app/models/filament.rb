
class Filament < ApplicationRecord
  validates_presence_of :color, :brand, :fullWeight, :material
end
