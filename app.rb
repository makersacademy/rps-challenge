require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'


class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    computer = Computer.new
    $game = Game.new($player_1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choices' do
    @game = $game
    $player_1.players_choice(params[:player_1_choice])
    @game.play
    erb(:choices)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
