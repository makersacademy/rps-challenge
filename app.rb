require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:menu)
  end

  post '/names' do
    @p1 = Player.new(params[:Challenger])
    @p1_name = @p1.name
    erb(:play)
  end
end
