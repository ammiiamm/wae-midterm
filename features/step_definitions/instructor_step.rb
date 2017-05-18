Given(/^I am an instructor$/) do
  @user = FactoryGirl.create :instructor
end
Given(/^I want to add a course$/) do
  @course_offering = FactoryGirl.build :course_offering
end
When(/^I want to add a course as an instructor$/) do
  visit '/users/sign_in'
end
And(/^I am signed in$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end
When(/^I visit the course offering page$/) do
  visit '/course_offerings/new'
end
Then(/^I should see a form to add a course$/) do
  expect(page).to have_selector('form#new_course_offering')
end
When(/^I submit the form$/) do
  fill_in 'Course code', with: @course_offering.course_code
  fill_in 'Title', with: @course_offering.title
  fill_in 'Year', with: @course_offering.year
  fill_in 'Semester', with: @course_offering.semester
  click_button 'Create Course offering'
end
Then(/^I should see the details of my new course$/) do
  save_and_open_page
  expect(page).to have_content "Web Application Engineering"
end

