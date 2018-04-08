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
    @rps = session[:game].computer.rps
    erb :play
  end

  post '/playing' do
    session[:game].player_turn(params[:rps])
    redirect to ('/result')
  end

  get '/result' do
    @player_input = session[:game].player.choice
    @computer_output = session[:game].computer_turn
    @winner = session[:game].winner(@player_input, @computer_output)
    erb :result
  end

  post '/tryagain' do
    params[:try_again]
    redirect to ('/play')
  end



  run! if app_file == $0
end
