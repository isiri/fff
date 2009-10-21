require 'test_helper'

class CmsPageTest < ActiveSupport::TestCase
  should_validate_presence_of :reference_string, :title
  should_allow_mass_assignment_of :reference_string, :title, :sub_title, :nav_text, :body, :meta_keywords, :meta_description
  should_not_allow_mass_assignment_of :parent_id, :position
end
