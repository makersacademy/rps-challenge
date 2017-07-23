require 'sinatra'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    $game = Game.new(params[:player_name])
    redirect '/selection'
  end

  post '/selection' do
    @player_name = $game.player_1_name
    $game.selection(params[:selection])
    @selection = $game.return_selection
    redirect '/swap_players'
  end

  get '/swap_players' do
    @player_name = $game.player_2_name
    @number_of_players = $game.number_of_players
    #if num = 2 redirect to selection otherwise computer selction
    erb :swap_players
  end

  get '/selection' do
    @player_name = $game.player_1_name
    erb :selection
  end

  get '/selection' do
    @player_name = $game.player_1_name
    erb :selection
  end

  run! if app_file == $0
end
