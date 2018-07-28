require 'sinatra/base'
require_relative './lib/player'
class Game < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end
  
  get '/play' do 
    @player_1 = $player_1
    erb :play
  end 

  run! if app_file == $PROGRAM_NAME
end
