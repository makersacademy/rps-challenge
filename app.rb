require 'sinatra/base'
require_relative './lib/computer_player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :register
  end

  post '/name' do
    $game = Game.new(params[:player_name], ComputerPlayer.new)
    # session[:player] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @player_move = params[:rps_choice]
    @computer = ComputerPlayer.new
    erb :result
  end


  run! if app_file == $0
end
