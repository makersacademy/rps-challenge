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
    if params[:player_2_name].empty?
      player_2 = Bot.new
      $game = Game.new(player_1, player_2)    
      redirect '/play'
    else
      player_2 = Player.new(params[:player_2_name])
      $game = Game.new(player_1, player_2)    
      redirect '/play_mp'
    end
  end

  get '/play' do
    erb :play
  end

  get '/play_mp' do
    erb :playmp
  end

  post '/move' do
    session[:player_1_move] = params[:player_1_move]
    erb :move
  end
  
  post '/move_mp' do
    session[:player_1_move] = params[:player_1_move]
    session[:player_2_move] = params[:player_2_move]
    erb :movemp
  end

  get '/fight' do
    @round = $game.single_match(session[:player_1_move])
    @computer_move = $game.computer_move
    erb :outcome
  end

  get '/fight_mp' do
    @round = $game.mp_match(session[:player_1_move], session[:player_2_move])
    erb :outcomemp
  end
  run! if app_file == $0
end
