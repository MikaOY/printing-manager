
FactoryGirl.define do
  factory :printer do
		name { Faker::Cat.breed }		
    startupCost { (rand(1.00...20.00) * 100).round / 100.0 }
  end
end
