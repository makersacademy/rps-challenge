require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.game(Player.new(name: params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/find_winner' do
    @game = Game.instance
    @game.player_1.option(params[:selection])
    @game.find_winner
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
