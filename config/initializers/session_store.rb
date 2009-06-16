# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Metal-Examples_session',
  :secret      => 'f05ee625763f137799623653c53045f4d9268f3992ba09ea545560dc9604463ea8624b37a9d71b2874c1963f896852b5d62ca819ecd14af46bb6df283c376c7f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
