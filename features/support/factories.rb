FactoryGirl.define do
  factory :instructor, class: User do
    email "ammii@ait.asia"
    password "password"
    password_confirmation "password"
  end
  factory :course_offering do
    course_code "WAE"
    title "Web Application Engineering"
    year "2016"
    semester "8"
  end
end


