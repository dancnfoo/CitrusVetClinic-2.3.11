# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CitrusVetClinic-2.3.11-Callaghan_session',
  :secret      => 'b4e67eacacecb8ab3ea5d45040d3c212f9e932a7226d13e105815342618b1de1d433fd47351886e76d6951aa97ebc113957bdd03423bd65402db6712d1723eaa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
