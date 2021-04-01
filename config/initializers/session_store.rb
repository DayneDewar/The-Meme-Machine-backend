if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_the-meme-machine', domain: 'the-meme-machine-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_the-meme-machine'
  end
  