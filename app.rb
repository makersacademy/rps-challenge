require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:play)
  end
  # get '/attack' do
  #     @game.attack(@game.opponent) ? erb(:lose) : erb(:attack)
  #   end


  get '/results' do
    $game = Game.new($player1, $player2)
    p params
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_choice = params[:player1_choice]
    @player2_choice = params[:player2_choice]
    @msg = $game.moves(@player1_choice, @player2_choice)
    erb(:results)
  end
end
