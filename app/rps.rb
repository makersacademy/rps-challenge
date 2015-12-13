require 'sinatra/base'
require './lib/game.rb'
require './lib/human.rb'
require './lib/computer.rb'
require './lib/game_manager.rb'

class RPS < Sinatra::Base
  enable :sessions
  game_manager = GameManager.new(Game, Human, Computer)

  get '/' do
    erb :index
  end

  post '/new-session' do
    session[:name1] = params[:name1] 
    session[:ai?] = params[:name2].empty?
    session[:name2] = session[:ai?] ? 'Computer' : params[:name2]
    redirect '/new-game'
  end

  get '/new-game' do
    session[:current_game_id] = game_manager.new_game(session)
    redirect '/play'
  end

  get '/play' do
    current_game = game_manager.current_game(session)
    erb :play, locals: { game: current_game }
  end

  post '/choice' do
    current_game = game_manager.current_game(session)
    current_game.add_choice(params[:chooser], params[:shape])
    redirect '/play' if current_game.player2_turn?
    redirect '/result'
  end

  get '/result' do
    current_game = game_manager.current_game(session)
    erb :result, locals: { game: current_game }
  end
end
