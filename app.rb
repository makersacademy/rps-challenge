require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/sign-in' do
    user = Player.new(params[:user])
    computer = Computer.new
    Game.store_game(Game.new(user, computer))
    redirect '/play'
  end

  get '/play' do
    @game = Game.show_game
    @user = @game.player.name
    erb :play
  end

  post '/rock' do
    @game = Game.show_game
    @weapon = @game.player.choice('rock')
    redirect '/outcome'
  end

  post '/paper' do
    @game = Game.show_game
    @weapon = @game.player.choice('paper')
    redirect '/outcome'
  end

  post '/scissors' do
    @game = Game.show_game
    @weapon = @game.player.choice('scissors')
    redirect '/outcome'
  end

  get '/outcome' do
    @game = Game.show_game
    @user_weapon = @game.player.weapon
    @computer_weapon = @game.computer.choice
    erb :outcome
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
