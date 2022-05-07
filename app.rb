require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/computer'
require_relative 'lib/play'
require_relative 'lib/player'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/name' do
    session[:player] = Player.new(params[:player])
    session[:computer] = Computer.new
    session[:play] = Play.new(session[:player], session[:computer])
    p session[:play]
    redirect to '/game'
  end

  get '/game' do
    @play = session[:play]
    erb :game
  end

  post '/game' do
    @play = session[:play]
    @play.player.player_choice = params[:player_choice]
    @play.computer.random_choice
    redirect to '/result'
  end

  get '/result' do
    @play = session[:play]
    erb :result
  end

  run! if app_file == $0
end