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
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player1.name
    erb :play
  end

  post '/game' do
    @game.player1.weapon_choice((params[:weapon]).to_sym)
    redirect '/game'
  end

  get '/game' do
    @action = @game.player1.weapon
    @player_name = @game.player1.name
    @game.result
    erb :game
  end


  run! if app_file == $0
end
