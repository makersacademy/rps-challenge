require 'sinatra/base'
require './lib/game.rb'
require './lib/human.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  helpers do 
    def store_game(game)
      Game.add(game.object_id, game)
      session[:current_game_id] = game.object_id
    end

    def current_game
      Game.find(session[:current_game_id])
    end
  end

  get '/' do
    erb :index
  end

  post '/new-session' do
    session.clear
    session[:ai?] = true
    session[:name1] = params[:name1] 
    session[:name2] = session[:ai?] ? 'Computer' : params[:name2]
    redirect '/new-game'
  end

  get '/new-game' do
    game = Game.new(session, Human, Computer)
    store_game(game)
    redirect '/play'
  end

  get '/play' do
    @game = current_game
    erb :play
  end

  post '/choice' do
    game = current_game
    game.player1.choose params[:shape1]
    game.player2.choose params[:shape2]
    redirect '/winner'
  end

  get '/winner' do
    @game = current_game
    erb :winner
  end

  run! if app_file == $0
end
    
