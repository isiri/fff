Given /^there is a record for user with email "([^\"]*)" and password "([^\"]*)"$/ do |email, password|
  User.make(:email => email, :password => password, :password_confirmation => password)
end

Given /^there is a record for admin with email "([^\"]*)" and password "([^\"]*)"$/ do |email, password|
  User.make(:admin)
end
