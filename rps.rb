require 'sinatra/base'
require './lib/rps_game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    RpsGame.set_instance params[:player_name]
    @game = RpsGame.instance
    erb :play
  end

  post '/attack' do
    @game = RpsGame.instance
    @game.set_player_attack params[:attack]
    redirect '/game_over'
  end

  get '/game_over' do
    @game = RpsGame.instance
    @outcome = @game.determine_outcome
    if @outcome == 'win'
      erb :game_over_win
    elsif @outcome == 'draw'
      erb :game_over_draw
    elsif @outcome == 'lose'
      erb :game_over_lose
    end

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
