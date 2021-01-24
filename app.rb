require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions
 
  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post'/names' do 
    $player_1 = Player.new(params[:P1])
    redirect '/play' 
  end

  get '/play' do 
    @player_1 = $player_1.name
    erb :play
  end

  get '/move' do 
    @player_1 = $player_1.name
    erb :move
    # redirect '/turn'
  end

  # get '/turn' do 
  #   @player_1 = $player_1.name
  #   erb :move
  # end

  run! if app_file == $0
end