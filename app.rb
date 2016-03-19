require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.start_game(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.game
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
