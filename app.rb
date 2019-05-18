require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new("Computer")
    Game.create(player, computer)

    redirect :play
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player.choose(params[:choice])

    redirect :result
  end

  get '/result' do
    erb(:result)
  end
end
