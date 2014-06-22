FactoryGirl.define do
  factory :rubric do
    sequence(:name) { |n| "Chapter #{n} Test" }
  end
end
