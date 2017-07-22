require 'sinatra/base'
require './app/player'
require './app/game'

class RPSWeb < Sinatra::Application
  before do
    @game = Game.instance

  end
  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/playing' do
    @game.play(params[:weapon]) if @game.player_1.valid_weapon?(params[:weapon])
    redirect '/play'
  end
end
