require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

   enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # session[:marketeer_name] = params[:marketeer_name]
    $marketeer = Player.new(params[:marketeer_name])
    redirect '/play'
  end

  get '/play' do
    # @marketeer_name = session[:marketeer_name]
    @marketeer_name = $marketeer
    erb :play
  end

  post '/game' do
    session[:play_option] = params[:play_option]
    redirect '/game'
  end

  get '/game' do
    @play_option = session[:play_option]
    $computer = Computer.new
    @computer = $computer.move
    erb :game
  end

  run! if app_file == $0
end