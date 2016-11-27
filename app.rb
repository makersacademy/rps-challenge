require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/weapons'
require_relative 'lib/computer_opponent'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(Game, player, Weapons)
    redirect '/start'
  end

  get '/start' do
    @player_name = @game.player.name
    erb :start
  end

  get '/generate-opponent' do
    @computer_opponent_name = @game.generate_opponent(ComputerOpponent).name
    erb :opponent_generated
  end

  get '/weapons' do
    @weapons = @game.weapons.keys
    erb :weapons
  end

  post '/choice' do
    @player = @game.player
    @player.choose_weapon(Weapons, params[:weapon])
    redirect '/contest'
  end

  get '/random-weapon' do
    @player = @game.player
    @player.choose_weapon(Weapons, @game.weapons.keys.sample)
    redirect '/contest'
  end

  get '/contest' do
    @player = @game.player
    erb :contest
  end

  get '/result' do
    @game.determine_winner
    @player = @game.player
    @opponent = @game.opponent
    if @game.winner != :draw
      @winner = @game.winner
      erb :winner
    else
      erb :draw
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
