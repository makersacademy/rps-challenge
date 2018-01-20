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

  post '/names' do
    player_1 = params[:player_1]
    Game.create(player_1)

    redirect '/names'
  end

  get '/names' do
    erb :names
  end

  post '/game' do
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/result' do

    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
