require 'sinatra/base'
require 'game'
require 'player'

class Jajanken < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/setup' do
    player1_name = params[:username]
    Game.create(setup)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
