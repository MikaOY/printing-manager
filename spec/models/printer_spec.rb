
require 'rails_helper'

RSpec.describe Printer, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:startupCost) }
end
