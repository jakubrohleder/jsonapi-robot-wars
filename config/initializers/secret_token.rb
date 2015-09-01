# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4
# requires secret_key_base or secret_token to be defined, otherwise an
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
JsonapiRobotWars::Application.config.secret_token = ENV['SECRET_KEY_BASE'] || '03cc11da031420ece51ff848a0dbc47c5e04972a24861311b090c7ea15edfec607ab271ccf2ee851a6bcf1f21ae3860e9e18a840b7a511ed1bd8f4d31226bf02'
