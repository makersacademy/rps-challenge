require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/play' do
    $player ||= Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/result' do
    @move = params[:move].downcase
    @opponent_move = Game.computer_move
    @result = Game.result_of(@move, @opponent_move)
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end