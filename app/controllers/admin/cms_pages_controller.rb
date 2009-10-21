class Admin::CmsPagesController < ApplicationController
  before_filter :require_admin
  layout 'admin'

  admin_assistant_for CmsPage do |aa|
    aa.form do |form|
      form.columns :reference_string, :title, :body, :meta_keyword, :meta_description
      form[:body ].text_area_options = {:rows => 3}
      form[:meta_description ].text_area_options = {:rows => 2}
      form[:meta_keyword ].text_area_options = {:rows => 2}      
    end

    aa.index do |index|
      index.columns :reference_string, :title, :meta_keyword, :meta_description
    end
  end
end
