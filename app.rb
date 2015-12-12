require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $player = Player.new(params[:player_1])
    redirect :play
  end

  get '/play' do
    @name = $player.name
    erb :play
  end

  post '/choice' do
    
    erb :choice
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
