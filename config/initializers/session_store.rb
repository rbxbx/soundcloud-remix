# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rjd2-remix_session',
  :secret      => 'a7c9d3f27743eb5920e8bbee3d805b84fb3d41bb064fb0398de214461a63e045d4707d273555e8a6d5301ffc3cd48d4fee365ead0a0d4b1c40881bf4d8a74119'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
