require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/result' do
    @game = Game.new
    @player_choice = @game.player_choice(params[:player_choice])
    @computer_choice = @game.computer_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
