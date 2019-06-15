require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/random_weapon'

class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    session[:player] = Player.new(params[:player_name])
    redirect "/turn"
  end

  get '/turn' do
    @player_name = session[:player].name
    erb :turn
  end

  post '/play' do
    @choice = params[:choice]
    @player = session[:player]
    @player.choice = @choice
    redirect "/result"
  end

  get '/result' do
    @player_name = session[:player].name
    @player = session[:player]
    @game = Game.new(@player, RandomWeapon.new)
    @result = @game.result
    @game_choice = @game.game_choice
    erb :result
  end

end
