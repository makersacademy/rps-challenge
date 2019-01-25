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

  post '/store-move' do
    @round.store_and_switch(params[:move])
    redirect '/computer-move'
  end

  get '/computer-move' do
    @round.computer_move
    redirect '/result'
  end

  get '/result' do
    @round.calculate_outcome
    erb :result
  end


end
