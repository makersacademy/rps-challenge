require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end
  
  post '/play' do
    player = Player.new(params[:name].capitalize)
    $game = Game.new(player)
    @game = $game
    erb(:play)
  end
  
  get '/game' do
    @game = $game
    @computer_choice = @game.computers_choice
    @choice = @game.players_choice(params[:choice])
    @winner = @game.winner
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
