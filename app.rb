require 'sinatra/base'
require_relative './lib/game'

class Rocky < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game-type' do
    session[:game] = Game.new(params[:type])
    redirect '/register'
  end

  get '/register' do
    erb :register, { locals: { type: session[:game].type } }
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    session[:player_2] = Player.new(params[:player_2])
    redirect '/choice'
  end

  get '/choice' do
    player_1 = session[:player_1]
    player_2 = session[:player_2]
    player_1.choice.nil? ? (player = player_1) : (player = player_2)
    erb :choice, {
      locals: {
        player_name: player.name, 
        weapons: session[:game].weapons 
        } 
      }
  end

  post '/turn' do
    game = session[:game]
    player_1 = session[:player_1]
    player_2 = session[:player_2]
    player_1.choice.nil? ? (player = player_1) : (player = player_2)
    player.choose(params[:weapon])
    if player_2.choice.nil? && game.type == :multiplayer
      redirect '/choice'
    else 
      game.play(player_1, player_2)
      redirect '/result' 
    end
  end
    
  get '/result' do
    game = session[:game]
    erb game.result, { 
      locals: {
        player_1: session[:player_1],
        player_2: session[:player_2],
        result: game.result,
        } 
      }
  end

end
  