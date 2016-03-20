require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  get '/multi' do
    erb :multi
  end

  post '/player_one' do
    Player.add_player(params[:name], params[:weapon])
    redirect 'second_player'
  end

  get '/second_player' do
    erb :second_player
  end

  post '/player_two' do
    p1 = Player.current_player
    p2 = Player.add_player(params[:name], params[:weapon])
    Game.start(p1, p2)
    redirect '/result'
  end

  post '/start' do
    p1 = Player.new(params[:name], params[:weapon])
    p2 = Computer.new
    Game.start(p1, p2)
    redirect '/result'
  end

  get '/result' do
    erb Game.current_game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
