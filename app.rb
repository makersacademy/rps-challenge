require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class App < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @player = Player.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/submit' do
    session[:choice] = params[:choice]
    game = Game.new
    session[:npc] = game.random
    session[:result] = game.result(session[:choice], session[:npc])
    @player.update_score(session[:result])
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @npc_choice = session[:npc]
    @result = session[:result]
    erb :result
  end

end
