require 'sinatra/base'
require './lib/game'
require './lib/go_manager'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new
    go_manager = GoManager.new
    Game.new_game(player1, player2, go_manager)
    redirect '/play'
  end

  before do
    @game = Game.game_instance
  end

  get '/play' do
    if params["go"]
      @game.player1.my_go(params["go"].to_sym)
      @game.player2.my_go(@game.random_go)
      @game.winner
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
