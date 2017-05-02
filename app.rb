require 'sinatra/base'
require_relative './lib/new_game'

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
    session['game'] = NewGame.new(session['choice'])
    erb(:play_game)
  end
end
