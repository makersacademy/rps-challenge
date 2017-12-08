require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:menu)
  end

  post '/names' do
    erb(:play)
  end
end
