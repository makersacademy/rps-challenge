require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post "/name" do
    session[:player] = Player.new(params[:name])
    session[:player2] = Player.new(params[:name2])
    redirect "/play"
  end

  get "/play" do
    @player = session[:player].name 
    @player2 = session[:player2].name 
    erb :play
  end

  post "/move" do
    session[:move] = params[:choice]
    session[:move2] = params[:choice2]
    session[:player].choose(session[:move])
    session[:player2].choose(session[:move2])
    redirect "/arena"
  end

  get "/arena" do
    session[:player2] = Player.new("Computer") if session[:player2].name == ""
    session[:player2].choose_random
    @game = Game.new(session[:player], session[:player2])
    @game.fight
    erb :arena
  end

  run! if app_file == $0
end
