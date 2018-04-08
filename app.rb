require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player = session[:game].player
    @computer = session[:game].computer
    erb :play
  end



  run! if app_file == $0
end
