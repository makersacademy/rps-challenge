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

  post '/weapon' do
    Game.show_game.player.choice(params[:choice])
    # Game.show_game.weapon2
    redirect '/outcome'
  end

  get '/outcome' do
    @game = Game.show_game
    @user_weapon = @game.weapon1
    @computer_weapon = @game.weapon2
    @result = @game.outcome
    erb :outcome
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
