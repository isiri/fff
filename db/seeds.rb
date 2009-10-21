# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Create an admin user
admin_email = 'sanath@isiritech.com'
admin_password = 'sanath'
admin_user = User.new(:email => admin_email, :password => admin_password, :password_confirmation => admin_password)
admin_user.admin = true
admin_user.save

# Add initial CMS entries


# Add initial AfterLife Discussion Group Question
