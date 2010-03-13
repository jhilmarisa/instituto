# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_instituto2_session',
  :secret      => '0e4397729aff4b2c2855f8dda21c6f8330e64f552bce2781ee2b5ae0bdf4f7edb308e4a199337a9476a3de2074940432f167b2e13c52c67736caddf4ca4d7265'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
