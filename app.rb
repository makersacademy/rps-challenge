require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_1 = Player.new(params[:Player_1])
    @computer = Computer.new
    $game = Game.new(@player_1, @computer)
    redirect to '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    erb(:play)
  end


  get '/results' do
    @game = $game
    @player_choice = params['choice']
    @game.computer.rps_choice
    @game.rps_logic(@player_choice, @game.computer.choice)
    @game.result
    erb(:results)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
