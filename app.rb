require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/enter-name' do
    @game = Game.create(params[:Name])
    redirect '/play'
  end

  get '/play' do
    @name = @game.player_name
    erb :play
  end

  post '/choose' do
    @game.choose_weapon(params[:weapon])
    @game.rand_computer_weapon
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
