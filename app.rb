require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_name]))
    redirect '/welcome'
  end

  get '/welcome' do
    @name = @game.player.name
    erb :welcome
  end

  post '/play' do
    @game.player.choose(params[:choice])
    redirect '/play'
  end

  get '/play' do
    @player_choice = @game.player.choice
    @opponent_choice = @game.opponent_choice
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
