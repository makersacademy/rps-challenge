require 'sinatra/base'

require_relative './lib/player.rb'
require_relative './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/choice' do
    $player.player_move(params[:player_choice])
    redirect '/winner'
  end

  get '/winner' do
    @player_name = $player.name
    @player_choice = $player.player_choice
    @computer_choice = Computer.new.computer_move
    erb :winner
  end

  run! if app_file == $0

end
