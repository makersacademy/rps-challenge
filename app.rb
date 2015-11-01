require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  # enable :sessions
  # set :session_secret, 'string'

  get '/' do
    erb :registration
  end

  post '/name' do
    $player1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    erb :play
  end

  post '/selection' do
    $player1_choice = $player1.choose_weapon(params[:player_1_choice])
    redirect 'result'
  end

  get '/result' do
    @player1_choice = $player1_choice
    # @computer_choice = $computer.weapon
    erb :result
  end

  run! if app_file == $0
end
