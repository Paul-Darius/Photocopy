FactoryGirl.define do
  factory :user, class: User do
    email "st117743@ait.asia"
    password "password"
    password_confirmation "password"
  end
  factory :adminuser, class: User do
    id 3
    admin true
    email "st117749@ait.asia"
    password "password"
    password_confirmation "password"
  end
  factory :purchase do
    file_url "dragonball42.pdf"
    comments "Black and white please!"
  end

end