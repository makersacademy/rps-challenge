require 'sinatra/base'
require 'game'

class Jajanken < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/setup' do
    player_name = params[:username]
    Game.create(player_name: player_name)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
