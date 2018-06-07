require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_one = Player.new(params[:player_name])
    # Using evil global until database module covered
    $game = Game.new(@player_one, Computer.new)
    redirect '/selection'
  end

  get '/selection' do
    @player_one = $game.player1
    erb(:selection)
  end

  post '/selection' do
    $game.player1.weapon = params[:player_selection]
    erb($game.result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
