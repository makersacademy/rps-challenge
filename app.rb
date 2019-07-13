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
    Game.instance.player1.set_move(@player_move)
    Game.instance.player2.randomise_move
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

end
