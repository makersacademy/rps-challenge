require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]))
    # $player_1 = Player.new(params[:player_1])
    $player_2 = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  post '/selection' do
    p $game
    p $player_2
    p $game.player_1.weapon = params[:action]
    p $player_1_weapon = $game.player_1.weapon
    # @Player_1_weapon = params[:action]
  #  @Player_1_weapon = $game.player_1.weapon(params[:action])
    # @Player_1_weapon = params[:action]
    #  play_game(weapon)
    redirect '/result'
  end

  get '/result' do
    p @player_1_name = $game.player_1.name
    p @player_1_weapon = $game.player_1.weapon
    p @player_2_weapon = $player_2.weapon
    @player_2_name = $player_2.name
    p @rules = $game.rules
    p @result = @rules[@player_1_weapon][@player_2_weapon]

    # game = Game.new
    # The WIN!!!!"
    # elsif @result == :lose
    #   "#{@player_2_name} WINS!! Better luck next time!!"
    # elsif @result == :draw
    # "DRAW!!!"
    # end
    erb(:result)
  end

  #   @game = Game.new

  # start the server if ruby file executed directly
  run! if app_file == $0
end
