FactoryBot.define do
  factory :patient do
    first_name { 'John' }
    last_name { 'Doe' }
    age { '22' }
    address { 'New York city LA' }
  end
end
