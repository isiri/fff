require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  should_belong_to :addressable
  should_validate_presence_of :address, :city, :state, :zip
  should_allow_mass_assignment_of :address, :city, :state, :zip
  should_not_allow_mass_assignment_of :addressable_id, :addressable_type
end
