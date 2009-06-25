# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Metal-Examples_session',
  :secret      => '60bc5531f33411e9d55dda41c6861c33c2f457ef3c688a67b30550f74a965d76695ea384c085f5be0fcffa733645a25b11a93a79bfcc9fb965db4f994e507738'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
