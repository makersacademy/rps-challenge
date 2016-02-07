require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/result'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    $player_name = Player.new(params[:player_name])
    redirect '/choose_your_weapon'
  end

  get '/choose_your_weapon' do
    @player_name = $player_name.name.upcase
    erb :play
  end

  post '/game' do
    $player_name.choose(params[:weapon])
    redirect '/first_round'
  end

  get '/first_round' do
    @weapon = $player_name.weapon
    $computer_weapon = Computer.new.response
    @computer_weapon = $computer_weapon
    @winner = Result.new.return_winner
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
