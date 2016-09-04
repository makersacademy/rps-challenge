require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/single' do
    erb :single
  end

  post '/single-name' do
    player_1 = Player.new(params[:name])
    @game = Game.create(player_1, Computer.new)
    redirect '/single-play'
  end

  get '/single-play' do
    @game = Game.current_game
    erb :single_play
  end

  post '/single-game' do
    @game = Game.current_game
    @game.player_1.choose_weapon(params[:weapon])
    @game.player_2.choose_weapon
    redirect '/single-result'
  end

  get '/single-result' do
    @game = Game.current_game
    erb :single_result
  end

  get '/multi' do
    erb :multi
  end

  post '/multi-names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/multi-play'
  end

  get '/multi-play' do
    @game = Game.current_game
    erb :multi_play
  end

  post '/multi-game' do
    @game = Game.current_game
    @game.player_1.choose_weapon(params[:weapon_1])
    @game.player_2.choose_weapon(params[:weapon_2])
    redirect '/multi-result'
  end

  get '/multi-result' do
    @game = Game.current_game
    erb :multi_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
