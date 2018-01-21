require 'sinatra/base'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/play' do
    game = Game.create(Player.new(params[:player_name]))
    p game.players
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player1.name
    erb :play
  end

  post '/game' do
    $action = params[:weapon]
    p $action
    redirect '/game'
  end

  get '/game' do
    @action = $action
    @player_name = @game.player1.name
    erb :game
  end

  run! if app_file == $0
end
