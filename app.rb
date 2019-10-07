require 'sinatra/base'
require './lib/game'
require './lib/move'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name], nil )
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    erb :play
  end

  get '/play' do
    @game.player_1.move = nil
    erb :play
  end

  get '/game_result' do
    @game.player_1.move ||= params[:player_1_move]
    p1move = @game.player_1.move
    p2move = @game.player_2.player_2_move
    @winner = @game.winner(p1move, p2move)
    @p2move = p2move
    erb :game_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
