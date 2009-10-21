Given /^I am logged in as an admin$/ do
  User.make(:admin)
  visit new_user_session_path
  fill_in(:email, :with => 'admin@example.com')
  fill_in(:password, :with => 'password')
  click_button('Login')
end
