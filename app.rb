require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = params[:player_1_name]
    @game = Game.create(player_1)
    redirect '/game'
  end

  get '/game' do
    erb :game_view
  end

  post '/compete' do
    @game.player_choice = params[:selection]
    @game.computer_chooses
    @game.evaluate
    redirect '/victory'
  end

  get '/victory' do
    erb :victory
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
