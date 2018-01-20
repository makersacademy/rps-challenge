require 'sinatra/base'
require './lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/play' do
    player_1 = params[:player_1]
    Game.create(player_1)

    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/game' do
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
