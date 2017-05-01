require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, ""

  get '/' do
    erb(:index)
  end

  post '/play_screen' do
    @player_name = params['player_name']
    erb(:play_screen)
  end
end
