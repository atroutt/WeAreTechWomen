# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Citizenry::Application.config.secret_token = SETTINGS[:secret_token] || '4XZW69CD4uygXhjkjdfhaskeufhsakdfsCVUYurQVjpDN3UJquBqA8UvPcu3vvpgrNhXu35Qh7bm4Xn4jTr'
