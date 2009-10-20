# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fff_session',
  :secret      => '97ed4a77b5c77966f9ebef7b4a885ac825be939e440720b56c5e6ddb6ae66b4ff6e380831ceec69dbc5a0d31272c9934aebd216a6a06bb1f58cbad37559683e1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
