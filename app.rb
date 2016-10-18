require 'sinatra/base'
require './lib/game'
require './lib/player'


class Rps < Sinatra::Base
  attr_reader :player_choice

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.current = Game.new(player)
    redirect '/play'
  end

get '/play' do
  @game = Game.current
  erb :play
end

get '/move' do
  @game = Game.current
  @player_move = params[:move]
  @compu_move = @game.sample
  erb :result
end

#-----------------------2 PLAYERS GAME----------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------------------
post '/2name' do
  player1 = Player.new(params[:player1_name])
  player2 = Player.new(params[:player2_name])
  Game.current= Game.new(player1, player2)
  redirect '/2play'
end

get '/2play' do
  @game = Game.current
  erb :twoplay
end

get '/2move' do
  @game = Game.current
  @game.players[0].move = params[:move]
  erb :twoplay2
end

get '/2move2' do
  @game = Game.current
  @game.players[1].move = params[:move2]
  erb :tworesult
end

run! if app_file == $0

end
