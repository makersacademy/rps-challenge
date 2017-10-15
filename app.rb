require 'sinatra/base'
require_relative './lib/computer_player.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :register
  end

  post '/name' do
    session[:player] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
    # redirect '/paper'
  end

  post '/result' do
    @player_move = params[:rps_choice]
    @computer = ComputerPlayer.new
    erb :result
  end


  run! if app_file == $0
end
