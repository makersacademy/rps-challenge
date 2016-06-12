require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/card'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player= Player.new(params[:name])
    $game= Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @player= $game.player.name
    erb :play
  end

  post '/card' do
    $players_card= Card.new(params[:choose])
    redirect '/result'
  end

  get '/result' do
    @players_card= $players_card
    @random_card= Card.new
    #@players_card.game.against(@random_card)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
