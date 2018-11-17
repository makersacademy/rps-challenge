require "sinatra/base"
require "capybara"
require "./lib/game"

class Rps_App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/data' do
    @RPS_game = Game.create(player_name = params[:player_name], player_move = params[:player_move])
    redirect '/arena'
  end

  post '/arena' do
    @RPS_game = Game.create(player_name = params[:player_name], player_move = params[:player_move])
    @RPS_game = Game.instance
    @RPS_game.draw
    erb :arena
  end

  get '/au-pair' do
    @RPS_game.au_pair
    erb :player
  end

  get '/player-wins' do
    @RPS_game.player_wins
    erb :player
  end

  get '/PC-wins' do
    @RPS_game.pc_wins
    erb :player
  end



  run! if app_file == $0

end
