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

  post '/play_game' do
    @choice = params['choice']
    @player_name = params['player_name']
    p @player_name
    erb(:play_game)
  end
end
