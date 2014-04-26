FactoryGirl.define do
  factory :target do
    keyword
    state
  end

  factory :state do
    name 'California'
  end

  factory :impression do
  end

  factory :keyword do
    name 'Soya'

    factory :keyword_with_impressions do
      ignore do
        impressions 5
        clicks 3
      end

      after(:create) do |keyword, evaluator|
        FactoryGirl.create_list(:impression,
                                evaluator.impressions,
                                impressionable: keyword)

        FactoryGirl.create_list(:impression,
                                evaluator.clicks,
                                impressionable: keyword)
      end
    end
  end
end
