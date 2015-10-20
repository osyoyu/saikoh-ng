FactoryGirl.define do
  factory :event do
    transient do
      buttons_count 3
    end

    name "TestEvent"


    after(:build) do |event, evaluator|
      event.buttons << FactoryGirl.build_list(:button, evaluator.buttons_count, name: "最高")
    end

  end
end
