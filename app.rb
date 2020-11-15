require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/bot'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Bot.new
    $game = Game.new(player_1, player_2)    
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    session[:player_1_move] = params[:player_1_move]
    erb :move
  end

  get '/fight' do
    @round = $game.result(params[:player_1_move])
    @comp_move = $game.computer_move
    erb :outcome
  end
  run! if app_file == $0
end
