require 'sinatra/base'
require_relative 'lib/classes.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  before do
    @game = Game.instance
    # can we put the player name assignments here?
  end

  get '/' do
    erb :index
  end

  post '/submit' do
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new("Computer")
    @game = Game.create(player_1, player_2)
    redirect '/start_game'
  end

  get '/start_game' do
    player_name_variables
    erb :start_game
  end

  post '/choice' do
    @game.player_1.choice(params[:choice])
    @game.player_2.choice(Random_Weapon.new.show)
    redirect '/result'
  end

  get '/result' do
    player_name_variables
    weapon_variables
    @result = ResultPrinter.new(@game.player_1, @game.player_2, Calculator.new(@game.player_1.weapon, @game.player_2.weapon).result)
    erb :result
  end

  run! if app_file == $0
end
