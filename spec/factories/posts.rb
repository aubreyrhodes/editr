# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    user nil
    title "MyString"
    content "MyText"
    notes "MyText"
    bounty 1
  end
end
