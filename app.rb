require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "Ssssshhh! secret"

  get '/' do
    erb :welcome
  end

  get '/names' do
    erb :names
  end
end
