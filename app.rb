require 'sinatra'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name_p1' do
    erb :name_p1
  end

  get '/name_p2' do
    erb :name_p2
  end

  post '/name_player_one' do
    $game = Game.new(params[:player_name])
    redirect '/selection'
  end


  post '/name_two_players' do
    $game = Game.new(params[:player_one_name], params[:player_two_name] )
    redirect '/selection'
  end

  get '/swap_players' do
    @turn = $game.increment_count
    @player_name = $game.player_2_name
    @number_of_players = $game.number_of_players
    erb :swap_players
  end

  get '/computer_selection' do
    @computer_selection = $game.computer_selection
    redirect '/result'
  end

  get '/result' do
    @player_2_selection = $game.computer_selection
    @player_1_selection = $game.return_selection
    @player_1_name = $game.player_1_name
    @player_2_name = $game.player_2_name
    @result = $game.declares_a_winner

    erb :result
  end

  get '/selection' do
    @turn = $game.increment_count
    @number_of_players = $game.number_of_players
    @player_1_name = $game.player_1_name
    @player_2_name = $game.player_2_name
    erb :selection
  end

  get '/selection2' do
    @turn = $game.increment_count
    @number_of_players = $game.number_of_players
    @player_1_name = $game.player_1_name
    @player_2_name = $game.player_2_name
    erb :selection
  end


  post '/selection' do
    $game.selection(params[:selection])
    $game.increment_count
    redirect '/swap_players'
  end

  post '/selection2' do
    $game.selection_2(params[:selection])
    redirect '/result'
  end

  run! if app_file == $0
end
