require 'sinatra/base'
require_relative 'views/player'
require_relative 'views/game'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:start)
  end

  post '/who' do
    Game.store(params[:player1])
    redirect 'play'
    p params[:player1]
  end

  post '/play' do
    Game.store(params[:player1])

    Game.player1_selection(params[:choice])
    p params[:player1]
    p @winner
    erb(:player_1_select)
  end

  get '/result' do
  Game.game.declare_winner
  p params[:player1]
  p @winner
  erb(:results)
  end



run! if app_file == $0
end
