require 'sinatra'
require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    #Choosing a name, a player will be instantiated
    $player_1 = Player.new(params[:player_1_name], params[:pick_a_weapon])
    $computer = Computer.new
    #Creating a new computer
    $game = Game.new($player_1, $computer)
    #Creating a new game and passing in the players
    redirect "/play"
    #We will be re-directed for the player to choose a weapon
  end

  get '/play' do
    puts params
    @player_1 = $player_1
    @computer = $computer
    @game = $game
    erb(:play)
  end


    run! if app_file == $0
end
