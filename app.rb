require './lib/round'
require './lib/player'
require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  before do
    @round = Round.this_round
  end

  get '/' do
    erb :entry_form
  end

  post '/name' do
    player = Player.new(params[:name])
    @round = Round.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :options
  end


  post '/computer-move' do
    @round.store_move(params[:move])
    @round.switch_turn
  #  @round.random_move
    redirect '/result'
  end

  get '/result' do
    erb :result
  end


end
