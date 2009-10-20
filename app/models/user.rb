class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :email
    c.validate_login_field = false
    c.validates_length_of_email_field_options(:within => 0..200)
    c.validates_uniqueness_of_email_field_options(:message => I18n.t('authlogic.error_messages.email_dup'))
  end
  attr_accessible :email, :password, :password_confirmation
end
