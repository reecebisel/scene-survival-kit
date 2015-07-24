Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ['TWITTER_CONSUMER_SECRET']
	provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end