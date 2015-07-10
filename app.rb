require 'sinatra'
require 'unicorn'
require 'rest-client'

class App   < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    RestClient.post "https://api.pushover.net/1/messages.json", :token => "ayUrGvK4xDvYewE7EFVXJCoMrCKeMx", :user => "nAmrvNBQ74LL9sErFPT3JiH1aquX6x", :device => "gt-i9300",
                    :title => "The twilio offer", :message => "Email = #{params[:email]} , Offer = #{params[:offer]}"
  end
end
