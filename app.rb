require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.create(player1, player2) # this is created in Game class
    redirect to '/play'
  end

  before { @game = Game.instance } # this is the instance of the Game created in Game class

  get '/play' do
    erb(:play)
  end

  get '/results' do
    @player1_choice = params[:player1_choice]
    @player2_choice = params[:player2_choice]
    @msg = @game.moves(@player1_choice, @player2_choice)
    erb(:results)
  end
end
