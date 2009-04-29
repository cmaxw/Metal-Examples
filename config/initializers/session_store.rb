# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_metal_session',
  :secret      => 'c6a4d8f55d3ae8bf17b27f5cc5b950e2937bfb2ddf61b503e47c2bb077e3470ec4f5418155f7b37ed365df1e173c7f809b54260dac1c4017dc1acebe21c48bc2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
