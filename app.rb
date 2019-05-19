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

  post '/name' do
    session[:name] = params[:name]
    redirect ('/play')
  end

  get '/play' do
    @name = session[:name]
    #@player = Player.new(params[:name])
    #p @player.name
    erb (:play)
  end

  post '/result' do
    @name = session[:name]
    @player_choice = params[:choice]
    @game = Game.new(@player_choice)
    @game_choice = @game.game_choice
    @result = @game.judge
    erb (:result)
  end
end
