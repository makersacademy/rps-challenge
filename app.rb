require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  get '/multi_player' do
    erb :multi_player
  end

  post '/name' do
    p params
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create_game(player, computer)
    redirect '/single_play'
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create_game(player_1, player_2)
    redirect '/multi_play1'
  end

  before do
    @game = Game.instance
  end

  get '/single_play' do
    erb :single_play
  end

  get '/multi_play1' do
    erb :multi_play1
  end

  post '/option' do
    p params
    @game.p1_select_option(params[:option])
    redirect '/single_player_result'
  end

  post '/p1_option' do
    p params
    @game.p1_select_option(params[:option])
    redirect '/multi_play2'
  end

  get '/multi_play2' do
    erb :multi_play2
  end

  post '/p2_option' do
    p params
    @game.p2_select_option(params[:option])
    redirect '/multi_player_result'
  end

  get '/single_player_result' do
    @game.get_computer_choice
    @game.get_result(@game.p1_choice, @game.p2_choice)
    @game.keep_score(@game.result)
    erb :single_player_result
  end

  get '/multi_player_result' do
    @game.get_result(@game.p1_choice, @game.p2_choice)
    @game.keep_score(@game.result)
    erb :multi_player_result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
