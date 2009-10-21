class Admin::AfterLifeDiscussionGroupQuestionsController < ApplicationController
  before_filter :require_admin
  layout 'admin'

  admin_assistant_for AfterLifeDiscussionGroupQuestion do |aa|
    aa.form do |form|
      form.columns :question, :show_answer_by_textarea, :show_answer_by_radio
      form[:show_answer_by_textarea ].input = :check_box
      form[:show_answer_by_radio].input = :check_box
    end

    aa.index do |index|
      index.columns :question, :show_answer_by_textarea, :show_answer_by_radio
    end
  end

end
