
class Printer < ApplicationRecord
  validates_presence_of :name, :startupCost
end
