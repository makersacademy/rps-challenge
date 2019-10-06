require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Hello!'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    @game = Game.create(player1)
    @game = Game.instance 
    redirect '/greet'
  end
  
get '/greet' do
  @game = Game.instance
  erb :greet
end

get '/play' do
  @game = Game.instance
  erb :play
end

post '/move' do
  @game = Game.instance
  @game.player1.choice = params[:move]
  @game.player2.choice = @game.random_move
  redirect '/winner'
end

get '/winner' do
  @game = Game.instance
  
  erb :winner
end

run! if app_file == $PROGRAM_NAME
end