require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    @player = Player.new params[:player_name]
    @game = Game.create(@player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.object
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
