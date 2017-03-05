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
    @game.select_option(params[:option])
    redirect '/result'
  end

  get '/result' do
    @game.get_computer_choice
    @game.get_result(@game.choice, @game.computer_choice)
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
