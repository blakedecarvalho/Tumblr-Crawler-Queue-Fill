#BEGINNING

require "tumblr_client"
Tumblr.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end

client = Tumblr::Client.new
# Make the request
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
KOFF = 1
  while KOFF <= 350
    myURL = client.posts 'TARGETTUMBLRUSERNAME.tumblr.com', :type => 'photo', :limit => 1, :offset => KOFF
    File.open("F:\\linksraw.rb", 'a') { |file| file.puts myURL['posts'].map{ |post| post['post_url'] } }
    KOFF += 1
    puts KOFF
  end





