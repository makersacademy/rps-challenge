require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'


class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
   $player_1 = Player.new(params[:player_1_name])
   redirect '/play'
  end

  get '/play'do
    @player_1_name = $player_1.name

    erb :play
  end 

  post '/play' do
  $game = Game.new($player_1.name) 
  $computer_move = $game.generate_move
  $result = $game.generate_result($computer_move, params[:palyer_1_choice])
    redirect '/result'
  end 

  get '/result' do
    @result = $result 
    erb :result
  end 

 run! if app_file == $0
end 