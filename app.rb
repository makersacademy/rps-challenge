require 'sinatra/base'
require './lib/human_player'
require './lib/computer_player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:player_1_name])
    redirect ('/play')
  end

  get '/play' do
      @player_1_name = $p1.name
      erb(:play)
  end

  get '/rock' do
      @player_1_name = $p1.name
      $p1.rock
      @player_1_move_choice = $p1.move_choice
      erb(:rock)
  end

  get '/paper' do
      @player_1_name = $p1.name
      $p1.paper
      @player_1_move_choice = $p1.move_choice
      erb(:paper)
  end

  get '/scissors' do
      @player_1_name = $p1.name
      $p1.scissors
      @player_1_move_choice = $p1.move_choice
      erb(:scissors)
  end

  get '/computer' do
      $computer = Computer.new
      @computer_1_move_choice = $computer.comp_choice
      @player_1_move_choice = $p1.move_choice
      @game_outcome = Game.new.winner($p1, $computer)
      erb(:computer)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
