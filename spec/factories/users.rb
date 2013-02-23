# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Test User"
    password "test123"
    password_confirmation "test123"
    email "test@email.com"
    last_logged_in_at "2013-02-22 20:34:23"
  end
end
