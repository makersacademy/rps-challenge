require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, ""

  get '/' do
    erb(:index)
  end

  post '/play_screen' do
    session['player_name'] = params['player_name']
    erb(:play_screen)
  end

  post '/play_game' do
    session['choice'] = params['choice']
    erb(:play_game)
  end
end
