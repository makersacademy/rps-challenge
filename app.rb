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
    @player_name = $game.players.first.name
    erb(:play)
  end

  get '/result' do
    $game.players.last.random_move
    erb(:result)
  end

  # Would like to remove the below bits
  get '/rock' do
    $game.players.first.selected('rock')
    #$game.players.last.random_move
    redirect '/result'
  end
  get '/paper' do
    $game.players.first.selected('paper')
    #$game.players.last.random_move
    redirect '/result'
  end
  get '/scissors' do
    $game.players.first.selected('scissors')
    #$game.players.last.random_move
    redirect '/result'
  end

  run! if app_file == $0
end
