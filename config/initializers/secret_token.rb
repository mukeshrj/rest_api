# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RestApi::Application.config.secret_key_base = '5be40f6ad406ed0d5911fe75a0fe3552977655d1bb31edbc66d598c914fc6471fbaf4996063b42ee3784112efd6156ff87bfb24524295131fe792d52de22b3e5'
