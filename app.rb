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

  get '/check'do
  @game = Game.current
  redirect (@game.check)
end

get '/play' do
  @game = Game.current
  erb :play
end

get '/won_game' do
  @game = Game.current
  erb :won_game
end

get '/lost_game' do
  @game = Game.current
  erb :lost_game
end

get '/rock' do
  @game = Game.current
  @player_choice = "Rock"
  erb (@game.choice("Rock"))
end

get '/paper' do
  @game = Game.current
  @player_choice = "Paper"
  erb (@game.choice("Paper"))
end

get '/scissors' do
  @game = Game.current
  @player_choice = "Scissors"
  erb (@game.choice("Scissors"))
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

get '/2rock' do
  @game = Game.current
  erb :twoplayrock
end

get '/2paper' do
  @game = Game.current
  erb :twoplaypaper
end

get '/2scissors' do
  @game = Game.current
  erb :twoplayscissors
end

get '/2check' do
  @game = Game.current
  redirect (@game.two_check)
end

get '/2tie' do
  @game = Game.current
  erb :twotie
end

get '/2win' do
  @game = Game.current
  erb :twowin
end

get '/2lose' do
  @game = Game.current
  erb :twolose
end

get '/2won_game' do
  @game = Game.current
  erb :two_won_game
end

run! if app_file == $0

end
