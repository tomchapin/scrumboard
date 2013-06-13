# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    parent nil
    user nil
    body "MyText"
  end
end
