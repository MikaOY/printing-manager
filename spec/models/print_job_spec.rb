require 'rails_helper'

RSpec.describe PrintJob, type: :model do
  it { should validate_presence_of(:filament_id) }
  it { should validate_presence_of(:usedWeight) }
  it { should validate_presence_of(:doneTime) }
  it { should validate_presence_of(:printer_id) }
  it { should validate_presence_of(:reference) }
end
