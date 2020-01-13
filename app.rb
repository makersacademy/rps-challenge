require 'sinatra/base'
require './lib/player'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new
    redirect to ('/play')
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  post '/choice' do
    session[:player_1_choise] = params[:player_choice]
    redirect to ('/end-game')
  end

  get '/end-game' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1_choise = session[:player_1_choise]
    erb :end_game
  end

  # start the server when ruby file executed directly
  run! if app_file == $0
end
