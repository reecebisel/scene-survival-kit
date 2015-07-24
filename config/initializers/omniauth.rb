
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['1zWRQZ2GpHUstPfsmRErLkSWD'], ENV['UEAYZucVTN9a8USoyQr6DeABCTBgSSj4X0t7CoaNsP6PJkH0jV']
	provider :facebook, ENV['1013478302035989'], ['fbcf933ffb14418c2b6534b90af92c0d']
end