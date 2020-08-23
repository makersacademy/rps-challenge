require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    @game = Game.new(player_1)
    redirect '/play'
  end

  before do
   @game = Game.instance
  end

  get '/play' do
    # @game = $game
    erb :play
  end

  post '/result' do
    # @game = $game
    @game.players_choice(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    # @game = $game
    @game.computer_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
