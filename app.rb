require './lib/player'
require "sinatra/base"

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :entering_names
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/player_options' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :player_options
  end

  run! if app_file == $0
end
