require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    player = Player.new(params[:player]); computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/player_choice' do
    @game.player.get_choice(params[:choice])
    @game.set_player_choice
    redirect '/play'
  end

  get '/end_game' do
    erb :end_game
  end

  run! if app_file == $0
end
