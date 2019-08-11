require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/rules.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :names
  end

  post '/names' do
    p params
    $Player_1 = Player.new(params[:Player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $Player_1.name
    @move = session[:move]
    @Opponent_move = $opponent_move
    erb :play
  end

  post '/play' do
    p params
    session[:move] = params[:move]
    $opponent_move = Computer.new.move
    redirect '/move'
  end

  get '/move' do
    p params
    @game = Rules.new
    @player1 = $Player_1.name
    @move = session[:move]
    @Opponent_move = $opponent_move
    erb :move
  end



  run! if app_file == $0
end
