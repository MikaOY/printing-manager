
require 'rails_helper'

RSpec.describe Filament, type: :model do
  it { should validate_presence_of(:color) }
  it { should validate_presence_of(:brand) }
  it { should validate_presence_of(:full_weight) }
  it { should validate_presence_of(:material) }
end
