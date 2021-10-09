require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'
require './lib/rps_computer.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/name') do
    session[:player_name] = params[:name]
    p params
    redirect to ('/game')
  end
  
  get ('/game') do
    @player_name = session[:player_name]
    erb :game
  end

  post ('/move') do
    session[:move] = params[:move]
    # @player_move = session
    p params
    redirect to ('/result')
  end

  get ('/result') do
    @player_move = session[:move]
    @new_game = RPSComputer.new(@player_move)
    @new_game.rps_result
    erb :result
  end

  run! if app_file == $0

end
