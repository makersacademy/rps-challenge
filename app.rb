require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name])
    computer = Player.new
    @game = Game.start_game(player_1, computer)
    redirect '/play'
  end
  before do
    @game = Game.game
  end
  get '/play' do
    erb(:play)
  end

  get '/confirmation' do
    @game.player_1.choose_option(params[:option])
    erb(:confirmation)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
