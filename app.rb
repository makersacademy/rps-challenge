require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/details' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    @game = $game
    @game.player.choice(params[:option])
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    @game.generate_move
    @game.player.show_choice
    @outcome = @game.outcome(@game.player.show_choice)
    erb :outcome
  end

  run! if app_file == $0

end
