FactoryGirl.define do
  factory :user do
    name      "Sergey Lukin"
    email     "sergey@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end
