require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/move'
  end

  get '/move' do
    @game = $game
    erb :move
  end

  post '/choice' do
    $game.move($game.current_player, params[:choice])
    redirect '/results' if $game.player_2[0] == 'The Computer' || $game.player_2.length == 2
    redirect '/move'
  end

  get '/results' do
    $game.move($game.player_2) if $game.player_2[0] == 'The Computer'
    @game = $game
    @winner = @game.winner
    erb :results
  end

  run! if app_file == $0
end
