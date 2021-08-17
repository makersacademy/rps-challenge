require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @stored_game = Game.new_game(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.game_instance
    erb(:play)
  end

  post '/move' do
    @game = Game.game_instance
    @game.player_1.move(params[:player_1_move])
    @game.player_2.move(params[:player_2_move])
    redirect '/result'
  end

  get '/result' do
    @game = Game.game_instance
    # @game.compare_moves
    @result = @game.result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
