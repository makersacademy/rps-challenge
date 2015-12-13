require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = params[:player_1_name]
    $player_2_name = params[:player_2_name]
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    erb :play
  end

  post '/attack' do
    $player_1_weapon = params[:weapon]
    redirect '/attack'
  end

  get '/attack' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    @player_1_weapon = $player_1_weapon
    erb :attack
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
