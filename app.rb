require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    player = Player.new(params[:player_name])
    computer = Computer.new
    Game.create(player, computer)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player.name
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.rock
    redirect to('/confirmation')
  end

  post '/paper' do
    @game = Game.instance
    @game.paper
    redirect to('/confirmation')
  end

  post '/scissors' do
    @game = Game.instance
    @game.scissors
    redirect to('confirmation')
  end

  get '/confirmation' do
    @game = Game.instance
    @player_choice = @game.player_choice
    @player_name = @game.player.name
    erb(:confirmation)
  end

  get '/computer_turn' do
    @game = Game.instance
    @game.computer_turn
    @computer_choice = @game.computer_choice
    erb(:computer_turn)
  end

  get '/winner' do
    @game = Game.instance
    @game.determine_winner
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
