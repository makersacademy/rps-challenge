require './lib/round'
require './lib/player'
require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  before do
    @round = Round.this_round
  end

  get '/' do
    erb :game_type_form
  end

  post '/type' do
    @type = params[:type]
    erb :entry_form
  end

  post '/name' do
    player = Player.new(params[:name])
    player2 = params[:name2] || "Computer"
    @round = Round.create(player, Player.new(player2))
    redirect '/play'
  end

  get '/play' do
    erb :options
  end

  post '/store-move' do
    @round.store_and_switch(params[:move])
    @round.current_turn.name == "Computer" ? (redirect '/computer-move')
    : (redirect '/result')
  end

  get '/computer-move' do
    @round.computer_move
    redirect '/result'
  end

  get '/result' do
    @round.run_outcome if @round.complete? == true
    erb :result
  end
end
