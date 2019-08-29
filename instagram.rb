# Get token: https://instagram.com/oauth/authorize/?client_id=************************&redirect_uri=https://*****************&response_type=token
require "instagram_api_client" # sudo gem install instagram_api_client

InstagramApi.config do |config|
	config.access_token = '********************************'
end  
puts (InstagramApi.user.recent_media ({count: 7})).data.map { |d|
	d.images.standard_resolution.url
} 
