require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/computer_player'

# RockPaperScissors
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_name])
    player2 = ComputerPlayer.new
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end
  run! if app_file == $PROGRAM_NAME
end
