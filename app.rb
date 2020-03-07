require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @current_player = @game.current_player
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
