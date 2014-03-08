# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Citizenry::Application.config.secret_token = SETTINGS[:secret_token] || '18e705437828204437e3b364ce33abc4c74f5dd5a624d7977121ce0986f5be2089fed7175bcc950f29fc5e4ea56c71da2da3efe946ae2014ad743eb5d13bebf4'
Citizenry::Application.config.secret_key_base = ENV['SECRET_KEY_BASE'] ||'18e705437828204437e3b364ce33abc4c74f5dd5a624d7977121ce0986f5be2089fed7175bcc950f29fc5e4ea56c71da2da3efe946ae2014ad743eb5d13bebf4'
