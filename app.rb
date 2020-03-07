require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    @player_1 = Player.new params[:player_name]
    @player_2 = Player.new "Computer"
    $game = Game.new @player_1, @player_2
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = $game.players.first.name
    # @player_2_name = $game.players.last.name
    erb(:play)
  end

  get '/result' do
    $game.player_2.random_move
    $game.calculate_result
    erb(:result)
  end

  get '/game_over' do
    erb(:game_over)
  end

  get '/check_score' do
    if $game.player_1.score == 3 || $game.player_2.score == 3
      redirect '/game_over'
    else
      redirect '/play'
    end
  end

  # Would like to remove the below bits
  get '/rock' do
    $game.player_1.selected('rock')
    redirect '/result'
  end
  get '/paper' do
    $game.player_1.selected('paper')
    #$game.players.last.random_move
    redirect '/result'
  end
  get '/scissors' do
    $game.player_1.selected('scissors')
    #$game.players.last.random_move
    redirect '/result'
  end

  run! if app_file == $0
end
