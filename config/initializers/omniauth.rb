
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['secret stuff for twitter']
	provider :facebook, ENV['secret stuff for facebook']
end
