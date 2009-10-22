require 'machinist/active_record'
require 'sham'
require 'faker'

User.blueprint do
  email { Sham.email }
  first_name { Sham.name }
  last_name { Sham.name }
  password 'password' 
  password_confirmation 'password'
  admin { false }
  address Address.make
end

User.blueprint(:admin) do
  email  { 'admin@example.com' }
  first_name { Sham.name }
  last_name { Sham.name }
  password 'password' 
  password_confirmation 'password'
  admin { true }
  address Address.make
end

Address.blueprint do 
  address { Sham.address }
  city { Sham.city }
  state { Sham.state }
  zip { Sham.zip }
end

Sham.define do
  title { Faker::Lorem.words(5).join(' ') }
  name  { Faker::Name.name }
  description  { Faker::Lorem.paragraphs(3).join("\n\n") }
  email { Faker::Internet.email }
  document { Tempfile.new('the attached document') }

  address { Faker::Address.street_address }
  city { Faker::Address.city }
  state { Faker::Address.us_state }
  zip { Faker::Address.zip_code }
end
