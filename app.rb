require 'sinatra/base'
require "./lib/game"
require "./lib/player"
require "./lib/computer"

class MyApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before { @game = Game.instance }

  post '/names' do
    player1 = Player.new(params[:player1_name])
    computer = Computer.new
    Game.create(player1, computer)
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.player1
    @player2 = @game.player2
    @winner  = @game.winner
    erb(:play)
  end

  post '/play' do
    @game.auto_battle(params[:attack])
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
