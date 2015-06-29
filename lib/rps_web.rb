require 'sinatra/base'
require './lib/rps_game'

class RPSWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    redirect '/one_player_game'
  end

  get '/one_player_game' do
    $game = RPSGame.new
    erb :one_player_game
  end

  get '/results' do
    choose = params[:playerchoice]
    @verdict = $game.play choose
    erb :results
  end
end
