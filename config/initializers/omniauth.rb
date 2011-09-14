Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'DPCJgB28CwNDI5P3TcF78w', 'RzgBbkjTSVJoykAWdri4jnPKhGptr2Jlnd3H7DUUZA'
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end