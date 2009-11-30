# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simplecd_session',
  :secret      => '12eb38b6b49adb91ef7656abc6d236fa5b70b2b394e6c0601d6f0d5bf1895209efcc38714f2e92f9dfd607035ea6db2a7f0464a31e01a1b3a0c39a413829d1a8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
