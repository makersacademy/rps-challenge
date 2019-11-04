require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    # @player_1_name = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    erb :play
  end

  get '/game' do
    @player_1_name = $player_1_name.name
    erb :game
  end

  run! if app_file == $10
end
