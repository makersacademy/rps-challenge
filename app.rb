require 'sinatra/base'
require './lib/player'
# require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-name' do
    $player_name = Player.new(params[:player_name])
    redirect '/play_confirmation'
  end

  get '/play_confirmation' do
    @player_name = $player_name.name
    erb :play_confirmation
  end

  get '/weapon' do
    @player_name = $player_name.name
    erb :play_game
  end

  post '/player-weapon' do
    @player_name = $player_name.name
    $player_selection = params[:selection]#why doesn't this work?
    redirect '/results'
  end

  get '/results' do
    @winner = $player_name.name
    @player_selection = $player_selection
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
