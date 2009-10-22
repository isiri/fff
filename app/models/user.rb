class User < ActiveRecord::Base
  has_one :address, :as => :addressable
  has_many :user_family_members

  acts_as_authentic do |c|
    c.login_field = :email
    c.validate_login_field = false
    c.validates_length_of_email_field_options(:within => 0..200)
    c.validates_uniqueness_of_email_field_options(:message => I18n.t('authlogic.error_messages.email_dup'))
  end

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :user_family_members, :reject_if => proc { |attributes| attributes['first_name'].blank? }


  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :middle_name, :cell_phone, :work_phone, :home_phone, :address_attributes, :user_family_members_attributes

  validates_associated :address
  validates_presence_of :first_name, :last_name
end
