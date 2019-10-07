require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/move' do
    $move = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @computer = Computer.new
    @computer_move = @computer.random_move
    @player.move = $move.downcase
    @game = Game.new(@player.move, @computer_move)
    @game.result
    erb :result
  end

  run! if app_file == $0

end
