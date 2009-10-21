class AfterLifeDiscussionGroupQuestion < ActiveRecord::Base
  validates_presence_of :question

  attr_accessible :question, :show_answer_by_textarea, :show_answer_by_radio
end
