require 'sinatra/base'
require './lib/opponent.rb'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_name])
    player_2 = Opponent.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player_1.name
    @opponent = @game.player_2.name
    erb(:play)
  end

  post '/who_wins' do
    @game = Game.instance
    session[:player_weapon] = params[:player_weapon]
    session[:opponent_weapon] = @game.player_2.attack
    redirect '/battle'
  end

  get '/battle' do
    @game = Game.instance
    @opponent_weapon = session[:opponent_weapon]
    @player_name = @game.player_1.name
    @player_weapon = session[:player_weapon]
    erb(:battle)
  end

  get '/game_over' do
    @game = Game.instance
    @player_weapon = session[:player_weapon]
    @opponent_weapon = session[:opponent_weapon]
    @result = @game.play(@player_weapon, @opponent_weapon)
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
