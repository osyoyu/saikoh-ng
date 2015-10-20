FactoryGirl.define do
  sequence :button_slugs do |n|
    "slug_#{n}"
  end

  factory :button do
    name "最高"

    slug { generate(:button_slugs) }
  end
end
