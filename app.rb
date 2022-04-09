require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new("Computer")
    session[:game] = Game.new(player, computer)
    redirect to '/play'
  end

  get '/play' do
    @name = session[:game].player
    @com = session[:game].com
    erb :play
  end

  post '/choose' do
    @choice = params[:choice]
    @com_move = session[:game].move
    session[:result] = session[:game].compare(@choice, @com_move)
    redirect to '/result'
  end

  get '/result' do
    @result = session[:result]
    erb :result
  end

  post '/play_again' do
    redirect to '/play'
  end

  run! if app_file == $0

end
