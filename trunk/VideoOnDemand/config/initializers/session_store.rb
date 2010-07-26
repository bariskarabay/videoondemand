# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_VideoOnDemand_session',
  :secret      => 'e6d79c72074f49534468c3cbd4a97ba4f9228f642dcd4b17a5ff6c19f7854ba3769123119f33d8249410510bd8821f2735fe630d2da17e21c9a5321e5ddd0710'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
