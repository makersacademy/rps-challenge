require 'sinatra/base'
require './lib/player'
# require './lib/game'
class RPS < Sinatra::Base
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/start_game'
  end

  get '/start_game' do
    @player_name = $player.name
    erb :start_game
  end

  post '/choice' do
    $player_choice = params[:choice]
    $computer_choice = Player.new('Computer').random
    redirect '/result'
  end

  get '/result' do
    @player_choice = $player_choice
    @computer_choice = $computer_choice
    erb :result
  end

  run! if app_file == $0
end
