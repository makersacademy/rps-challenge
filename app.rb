require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before {
    @game = Game.get_game
    @session = session
   }

  get '/' do
    session.clear
    erb :index
  end

  post '/player1' do
    player_1 = Player.new(params[:player_1_name])
    Game.start(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rps' do
    @game.rps(params[:rps_choice].downcase.to_sym)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
