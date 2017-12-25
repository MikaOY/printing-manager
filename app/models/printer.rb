
class Printer < ApplicationRecord
  validates_presence_of :name, :startup_cost
end
