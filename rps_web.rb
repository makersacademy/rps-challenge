require 'sinatra/base'
require './lib/game'
require './lib/mutiplayer_game'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do

    puts session[:player]
    @page = :index
    erb :template
  end

  post '/name' do
    mode = params[:players]
    redirect('/mpname', 307) if mode == "Multiplayer"
    Game.create(name: params[:player_name])
    redirect '/play' if mode == "Single Player"
  end
  
  get '/play' do
    @game = Game.instance
    @result = @game.result
    @ai_move = @game.ai_move.to_s.capitalize
    @player_name = @game.player_name
    @page = :play
    erb :template
  end

  post '/mpname' do
    MultiplayerGame.create(name: params[:player_name])
    redirect '/play'
  end

  get '/mpwaiting' do
    @redirect = multiplayer_route
    erb :mp_waiting
    sleep 2
    redirect @redirect
  end

  post '/move' do
    Game.instance.play(params[:choice])
    redirect '/play'
  end
end