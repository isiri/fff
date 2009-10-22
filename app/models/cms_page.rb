class CmsPage < ActiveRecord::Base
  acts_as_tree :order => :position
  acts_as_list :scope => :parent_id

  validates_presence_of :reference_string, :title
  validates_uniqueness_of :reference_string
  validates_format_of :reference_string, :with => /[a-z0-9_]+/, :message => "may only contain a-z, 0-9, and _ "

  attr_accessible :reference_string, :title, :sub_title, :nav_text, :body, :meta_keywords, :meta_description

  def self.get(reference_string)
    find_by_reference_string(reference_string) || self.new(:title => reference_string, :sub_title => "CMS Page Missing  - #{reference_string}")
  end
end
