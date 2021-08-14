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
    redirect "/play"
  end

  get "/play" do
    @player = session[:player].name 
    erb :play
  end

  post "/move" do
    session[:move] = params[:choice]
    session[:player].choose(session[:move])
    redirect "/arena"
  end

  get "/arena" do
    @opponent = Player.new
    @opponent.choose_random
    @game = Game.new(session[:player], @opponent)
    @game.fight
    erb :arena
  end

  run! if app_file == $0
end
