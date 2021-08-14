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
    @stored_game = Game.game(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.game_instance
    erb(:play)
  end

  post '/move' do
    @game = Game.game_instance
    # @game.move(params[:move])
    @game.player_1.move(params[:move])
    redirect '/result'
  end

  get '/result' do
    @game = Game.game_instance
    # print @game.player_1.move_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end