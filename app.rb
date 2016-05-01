require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    Game.new_game(Player.new(params[:player_name]))
    redirect 'play'
  end

  get '/play' do
    @player_name = Game.current_game.player_name
    erb :play
  end

  post '/result' do
    redirect Game.current_game.play_computer(params[:move])
  end

  get '/win' do
    erb :win
  end

  get '/draw' do
    erb :draw
  end

  get '/lose' do
    erb :lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
