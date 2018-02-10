require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before '/game' do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(player)
    redirect to '/game'
  end

  get '/game' do
    erb :game
  end


end
