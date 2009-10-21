require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should_allow_mass_assignment_of :email, :password, :password_confirmation

should_not_allow_mass_assignment_of :crypted_password, :password_salt, :persistence_token, :single_access_token, :perishable_token, :login_count, :failed_login_count, :last_request_at, :current_login_at, :last_login_at, :current_login_ip, :last_login_ip, :admin
end
