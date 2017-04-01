require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_1_name])
    @computer = Computer.create(params[:computer_name])
    @game = Game.create(@player,@computer)
    redirect '/play'
  end

  before do
    @player = Player.instance
    @computer = Computer.instance
    @game = Game.instance
  end

  get '/play' do
    @player_1_name = @player.name
    @computer_name = @computer.name
    erb(:play)
  end

  post '/attack' do
    @player.attack(params[:player_attack_method])
    @computer.get_attack
    @result = @game.winner
    erb(:attack)
  end

  run! if app_file == $0
end
