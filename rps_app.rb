require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/name' do
    session[:player] = params[:player].intern
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    # @player = session[:player]
    # @move = session[:move]
    # @comp_move = session[:comp_move]
    erb(:play)
  end

  post '/play' do
    session[:move] = params[:move].intern
    session[:comp_move] = Computer.new.move
    redirect '/play'
  end

  run! if app_file == $0

end