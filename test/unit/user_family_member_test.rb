require 'test_helper'

class UserFamilyMemberTest < ActiveSupport::TestCase
  should_belong_to :user
  should_allow_mass_assignment_of :first_name, :last_name, :relationship
  should_not_allow_mass_assignment_of :user_id
end
