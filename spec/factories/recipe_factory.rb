FactoryGirl.define do
  factory :recipe do
    user_id User.last
    name 'Lasagna'
    link 'http://lasagna.com'
    directions 'Eat lasagna'
    source 'The Blog'
  end
end
