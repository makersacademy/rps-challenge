require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :start
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.new_game(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
