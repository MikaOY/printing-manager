require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should validate_presence_of(:filament_id) }
  it { should validate_presence_of(:used_weight) }
  it { should validate_presence_of(:duration_mins) }
  it { should validate_presence_of(:printer_id) }
  it { should validate_presence_of(:reference) }
end
