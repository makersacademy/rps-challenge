require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(params[:player_name])
    redirect ('/play')
  end

  get '/play' do
    @player_name = $game.player
    erb(:play)
  end

  post '/result' do
    @option = params[:option]
    @computer_move = $game.computer_move
    @winner = $game.winner(@computer_move, @option)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
