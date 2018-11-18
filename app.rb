require "sinatra/base"
require "capybara"
require "./lib/game"

class Rps_App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/data' do
    player_name = params[:player_name]
    player_move = params[:player_move]
    @RPSgame = Game.create(player_name, player_move)
    redirect '/showdown'
  end

  get '/showdown' do
    @RPSgame = Game.instance
    erb :showdown
  end

  get '/arena' do
    @RPSgame = Game.instance
    @RPSgame.draw
    erb :arena
  end

  get '/au-pair' do
    @RPSgame = Game.instance
    erb :au_pair
  end

  get '/player-wins' do
    @RPSgame = Game.instance
    erb :player_wins
  end

  get '/pc-wins' do
    @RPSgame = Game.instance
    erb :pc_wins
  end



  run! if app_file == $0

end
