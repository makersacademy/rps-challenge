require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :start
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    player_1 = Player.new params[:player_name]
    player_2 = ComputerPlayer.new params[:spock_and_lizard]
    @game = Game.create player_1, player_2, params[:spock_and_lizard]
    redirect '/selection'
  end

  get '/selection' do
    @game = Game.instance
    erb :selection
  end

  post '/set_gesture' do
    @game = Game.instance
    @game.player_1.choose params[:gesture]
    @game.player_2.choose
    redirect '/fight'
  end

  get '/fight' do
    @game = Game.instance
    @game.allocate_points
    erb :fight
  end

  post '/best_of_plus_2' do
    @game = Game.instance
    @game.best_of_plus_2
    redirect '/selection'
  end




  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
