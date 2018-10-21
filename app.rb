require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    #enter_name
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/enter_move'
  end

  before do
    @game = Game.instance
  end

  get '/enter_move' do
    erb :enter_move
  end

  post '/move' do
    @game.player1.move = (params[:choice])
    @game.player2.move = @game.player2.random_move
    @game.evaluate(@game.player1, @game.player2)
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

  # start the server if ruby file executed directly
 run! if app_file == $0

end
