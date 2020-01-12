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
    @game.player1_chooses(params[:move].downcase.to_sym)
    @game.computer_chooses
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    (@game.outcome != :draw) ? @outcome = "#{@game.outcome} Wins!" : @outcome = "It's a draw"
    erb(:outcome)
  end
end
