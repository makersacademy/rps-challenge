require 'sinatra/base'
require './models/player'
require './models/computer'
require './models/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
  end

  post '/named-player' do
    $player = Player.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do 
    @player_name = $player.name
    erb :play
  end
  
  post '/play' do
    session[:player_move] = params[:move]
    redirect to('/result')
  end

  get '/result' do
    @player_move = session[:player_move]
    @game = Game.new(session)
    @ai_move = Computer.new.ai_move
    @winner_is = @game.winner_is
    p @game
    p @winner_is
    erb :result
  end
  # p @player_move
  # p params

  run! if app_file == $0
end