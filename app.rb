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

  # get '/computer-move' do
  #   @round.random_move
  #   redirect '/result'
  # end

  post '/result' do
    erb :result
  end


end
