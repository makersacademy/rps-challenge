require 'sinatra/base'
require_relative '../lib/computer'
require_relative '../lib/game'
class RPS < Sinatra::Base
enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:game] = Game.new(params[:name])
    redirect '/game-start'
  end

  get '/game-start' do
    @game = session[:game]
    erb :game_start
  end

  post '/game' do
    @game = session[:game]
    @game.round(params[:choice], @game.computer.make_choice)
    redirect '/end' if (@game.player.score == 3 || @game.computer.score == 3)
    erb :game
  end

  get '/end' do
    @game = session[:game]
    erb :end
  end

# This will start a server automatically if the ruby 
# file is executed directly
  run! if app_file == $0
end