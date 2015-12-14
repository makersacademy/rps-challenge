require 'sinatra/base'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $game     = Game.new($player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    @game.p1_choice(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @game.computer_choice
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
