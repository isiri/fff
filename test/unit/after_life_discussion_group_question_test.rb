require 'test_helper'

class AfterLifeDiscussionGroupQuestionTest < ActiveSupport::TestCase
  should_validate_presence_of :question
  should_allow_mass_assignment_of :question, :show_answer_by_textarea, :show_answer_by_radio
end
