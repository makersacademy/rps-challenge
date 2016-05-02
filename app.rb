require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/single' do
    Game.new_game(Player.new(params[:player_name]))
    redirect 'play'
  end

  get '/play' do
    @player_name = Game.current_game.player_1.name
    erb :play
  end

  get '/single_result' do
    @result = Game.current_game.play_computer(params[:move])
    erb @result
  end

  post '/multiplayer' do
    Game.new_game(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect 'multiplayer'
  end

  get '/multiplayer' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    erb :multiplayer
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
