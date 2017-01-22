require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_choice' do
    @game.player_choice(params[:weapon_choice])
    @game.computer_choice
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
