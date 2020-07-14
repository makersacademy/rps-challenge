require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player])
    computer = Computer.new
    session[:game] = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/result' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @move = session[:move]
    erb(:result)
  end

  run! if app_file == $0
end
