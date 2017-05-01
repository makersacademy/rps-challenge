require 'sinatra/base'
require './lib/game'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    @computer = Computer.new
    @player_1 = Player.new(params[:player_1])
    @game = Game.new_game(@player_1, @computer)
    redirect '/play'
  end

  get '/play' do
    @player_1 = @game.player_1
    erb :play
  end

  post '/choice' do
    @game.player_1.set_weapon(params[:weapon])
    @game.player_2.weapon_choice
    redirect '/result'
  end

  get '/result' do
    erb @game.check_winner(@game.player_1.weapon, @game.player_2.weapon_choice)
  end

  run! if app_file == $0
end
