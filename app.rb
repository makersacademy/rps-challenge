require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/result' do
    @player_name = $player.name
    @computers_move = Computer.new.computers_move
    @player_move = params[:player_move] 
    erb :result

  end

  run! if app_file == $0

end
