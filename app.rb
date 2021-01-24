require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1])
    @player_1_name = $player_1.name
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb(:play)
  end

  post '/weapon' do
    @player_weapon = $player_1.weapon(params[:weapon])
    redirect to('/results')
  end

  post '/results' do
    @player_1_name = $player_1.name
    @player_weapon = $player_1.weapon(params[:weapon])
    @computer_weapon = Computer.new.weapon
    @result = Results.new(@player_weapon).beats?(@computer_weapon)

    erb(:results)
  end

  run! if app_file == $0

end
