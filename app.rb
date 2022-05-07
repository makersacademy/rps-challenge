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
    @player = session[:player]
    @computer = session[:computer]
    erb :game
  end

  post '/game' do
    
    redirect to '/result'
  end

  get '/result' do
    @player = session[:player]
    @computer = session[:computer]
    erb :result
  end

  run! if app_file == $0
end