# frozen_string_literal:true

require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    # initiate instance variable @game that is stored in the class
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = params[:player_name]
    # instance variable @game is then assigned to a new instance of Game,
    # assignement also stored in Game...
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    # @game = $game
    erb :play
  end

  post '/attack' do
    if params[:name] == 'rock'
      @game.rock
      @game.opponent_hand
    elsif params[:name] == 'paper'
      @game.paper
      @game.opponent_hand
    elsif params[:name] == 'scissors'
      @game.scissors
      @game.opponent_hand
    end

    if @game.winner?
      erb :you_win
    else
      erb :you_lose
    end
  end

  run if app_file == $PROGRAM_NAME
end
