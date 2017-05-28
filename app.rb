require 'sinatra/base'
require './lib/opponent'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register' do
    @game = Game.create(Player.new(params[:player_name]),Opponent.new)
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/arena' do
    @choice = params[:choice]
    @opponent_choice = @game.players[1].choose_hand
      # TODO - look up ways to satisfy law of demeter e.g. Presentation Class?
    erb :arena
  end

  run! if app_file == $0
end
