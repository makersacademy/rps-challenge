require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/player-form' do
    $game = Game.new(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/move' do
    @game = $game
    @game.player1_chooses(params[:move].to_sym)
    @game.computer_chooses(@game.computer.move)
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    erb(:outcome)
  end
end
