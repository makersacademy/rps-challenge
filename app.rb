require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/infastructure' do
    "Testing Infastructure"
  end

  get '/' do
    erb(:title)
  end

  post '/play' do
    $game = Game.new(Player.new(params[:name]))
    @game = $game
    erb(:play)
  end

  post '/result' do
    @choice = (params[:choice]).downcase
    @game = $game
    @result = @game.result(@choice)
    erb(:result)
  end
end
