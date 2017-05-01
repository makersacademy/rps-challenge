require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect to('/weapons')
  end

  get '/weapons' do
    erb :weapons
  end

  post '/play' do
    session[:player_1_weapon] = params[:weapon]
    redirect to('/game')
  end

  get '/game' do
    @game = Game.new
    @opponent_weapon = @game.random_weapon
    @winner = @game.check(session[:player_1_weapon], @opponent_weapon)
    erb :game
  end

  run! if app_file == $0

end
