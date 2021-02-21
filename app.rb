require 'sinatra/base'
require_relative 'lib/classes.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/submit' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/start_game_sp' if @game.single_player?
    redirect '/start_game_mp'
  end

  get '/start_game_sp' do
    player_name_variables
    erb :start_game_sp
  end

  get '/start_game_mp' do
    player_name_variables
    erb :start_game_mp
  end

  post '/choice' do
    @game.player_1.choice(params[:choice])
    @game.player_2.choice(RandomWeapon.new.show)
    redirect '/result'
  end

  post '/p1_choice' do
    @game.player_1.choice(params[:choice])
    redirect '/p2_turn'
  end

  get '/p2_turn' do
    player_name_variables
    erb :player_2_turn
  end

  post '/p2_choice' do
    @game.player_2.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    player_name_variables
    weapon_variables
    calculation = Calculator.new(@game.player_1.weapon, @game.player_2.weapon).result
    @result = ResultPrinter.new(@game.player_1, @game.player_2, calculation)
    erb :result
  end

  get '/restart' do
    redirect '/start_game_sp' if @game.single_player?
    redirect '/start_game_mp'
  end

  run! if app_file == $0
end
