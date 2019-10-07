require "sinatra"
require "./lib/player"
require "./lib/sp_game"

class Rps < Sinatra::Base
  
  before do
    @current_sp_game = SpGame.current_sp_game
  end

  get '/' do
    erb :index
  end

  post '/players' do
    @current_sp_game = SpGame.start_an_sp_game(params[:name_one])
    redirect '/play'
  end

  get '/play' do
    @player_1 = @current_sp_game.player_1
    erb :play
  end

  get '/single_player_rps' do
    @player_1 = @current_sp_game.player_1
    erb :sp_rps
  end

  post '/process_result' do
    @current_sp_game.player_1.choose(params[:sp_rps])
    redirect '/sp_result'
  end

  get '/sp_result' do
    @current_sp_game.play_sp
    @player_1 = @current_sp_game.player_1
    @computer = @current_sp_game.computer
    erb :sp_result
  end
end
