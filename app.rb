require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb (:index)
  end

  post '/play' do
    session[:name] = params[:name]
    @name = session[:name]
    #@player = Player.new(params[:name])
    #p @player.name
    erb (:play)
  end

  post '/result' do
    @name = session[:name]
    @player_choice = params[:choice]
    @game_choice = Game.new(@player_choice).game_choice
    p "choice is #{@choice}"
    erb (:result)
  end
end
