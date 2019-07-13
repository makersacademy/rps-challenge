require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @instance = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_one = Player.new(params[:player_name])
    @player_two = Player.new("Computer")
    Game.create_instance(@player_one, @player_two)
    erb(:play)
  end

  post '/decide' do
    @player_move = params[:weapon]
    @instance.player1.set_move(@player_move.downcase.to_sym)
    @instance.player2.randomise_move
    @instance.assign_winner
    if @instance.winner == "Draw"
      redirect '/draw'
    else
      redirect '/outcome'
    end
  end

  get '/outcome' do
    erb :outcome
  end

  get '/draw' do
    erb :draw
  end

end
