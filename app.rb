require 'sinatra/base'
require './lib/player'


class Rock_Paper_Scissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player.name
    erb(:play)
  end

  post '/attack' do
    @player_1 = $player.name
    @choice = $player.select_choice(params[:choice])
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
