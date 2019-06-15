require 'sinatra/base'

require_relative './lib/player.rb'
require_relative './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  post '/choice' do
    $player_1.player_move(params[:player_1_choice])
    redirect '/winner'
  end

  get '/winner' do
    @player_1_name = $player_1.name
    @player_1_choice = $player_1.choice
    @computer_choice = Computer.new.computer_move
    erb :winner
  end

  run! if app_file == $0

end
