require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class App < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/submit' do
    session[:choice] = params[:choice]
    game = Game.new
    session[:npc] = game.random
    session[:result] = game.result(session[:choice], session[:npc])
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @npc_choice = session[:npc]
    @result = session[:result]
    @score = 
    erb :result
  end

end

