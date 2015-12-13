require 'sinatra/base'
require './lib/game.rb'
require './lib/human.rb'
require './lib/computer.rb'
require './lib/game_helpers.rb'

class RPS < Sinatra::Base
  include GameHelpers
  enable :sessions

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
    game = Game.new(session, Human, Computer)
    store_game(game)
    redirect '/play'
  end

  get '/play' do
    erb :play, { locals: { game: current_game } }
  end

  post '/choice' do
    chooser = params[:chooser]
    shape = params[:shape]
    redirect current_game.play_and_redirect(chooser, shape)
  end

  get '/result' do
    erb :result, { locals: { game: current_game } }
  end
end
