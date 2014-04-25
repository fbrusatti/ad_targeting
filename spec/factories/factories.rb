FactoryGirl.define do
  factory :target do
    keyword
    state
  end

  factory :state do
    name 'California'
  end

  factory :keyword do
    name 'Soya'
  end
end
