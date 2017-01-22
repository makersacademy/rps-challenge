require 'sinatra/base'
require './lib/opponent.rb'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/one_player_input' do
    erb(:one_player_input)
  end

  get '/multiplayer_input' do
    erb(:multiplayer_input)
  end

  post '/names' do
    player_1 = Player.new(params[:player_name])
    player_2 = Opponent.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  post '/names_multiplayer' do
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play_multiplayer'
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player_1.name
    @opponent = @game.player_2.name
    erb(:play)
  end

  get '/play_multiplayer' do
    @game = Game.instance
    @player_name = @game.current_player.name
    @opponent = @game.waiting_player.name
    erb(:play_multiplayer)
  end

  post '/who_wins' do
    @game = Game.instance
    @game.player_1.weapon = params[:player_weapon]
    @game.player_2.attack
    redirect '/battle'
  end

  post '/who_wins_multiplayer' do
    @game = Game.instance
    @game.current_player.weapon = params[:player_weapon]
    if @game.current_player.played? && @game.waiting_player.played?
      redirect '/battle'
    end
    redirect '/confirm'
  end

  get '/confirm' do
    @game = Game.instance
    @player_name = @game.current_player.name
    @player_weapon = @game.current_player.weapon
    @game.switch
    erb(:confirm)
  end

  get '/battle' do
    @game = Game.instance
    @opponent_weapon = @game.player_2.weapon
    @player_name = @game.player_1.name
    @player_weapon = @game.player_1.weapon
    @opponent_name = @game.player_2.name
    erb(:battle)
  end

  get '/game_over' do
    @game = Game.instance
    @player_weapon = @game.player_1.weapon
    @opponent_weapon = @game.player_2.weapon
    @result = @game.play(@player_weapon, @opponent_weapon)
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
