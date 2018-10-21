require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/computer.rb'
require_relative './lib/results_calculator.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/' do
    redirect '/single_player_home' if params[:mode] == "Single Player"
    redirect '/multiplayer_home'
  end

  get '/single_player_home' do
    erb :single_player_home
  end

  get '/multiplayer_home' do
    erb :multiplayer_home
  end

  post '/single_player_home' do
    redirect '/single_player_no_name' if params[:name_1].empty?
    player_1 = params[:name_1]
    Game.store_game(Game.new(Player.new(player_1)))
    redirect '/single_player_play'
  end

  post '/multiplayer_home' do
    redirect '/multiplayer_no_name' if params[:name_1].empty? || params[:name_2].empty?
    player_1, player_2 = params[:name_1], params[:name_2]
    Game.store_game(Game.new(Player.new(player_1), Player.new(player_2)))
    redirect '/player_1_play'
  end

  get '/single_player_no_name' do
    erb :single_player_no_name
  end

  get '/multiplayer_no_name' do
    erb :multiplayer_no_name
  end

  get '/single_player_play' do
    erb :single_player_play
  end

  get '/player_1_play' do
    erb :player_1_play
  end

  post '/single_player_play' do
    @game.player_1.choose_weapon(params[:weapon])
    @game.player_2.choose_weapon
    redirect '/results'
  end

  post '/player_1_play' do
    @game.player_1.choose_weapon(params[:weapon])
    redirect '/player_2_play'
  end

  get '/player_2_play' do
    erb :player_2_play
  end

  post '/player_2_play' do
    @game.player_2.choose_weapon(params[:weapon])
    redirect '/results'
  end

  get '/results' do
    @winner = @game.winner
    erb :results
  end

  post '/results' do
    redirect '/'
  end

  run! if app_file == $0
end
