require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(Player.new(params[:Player_1]), Computer.new)
    redirect to '/play'
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  post '/two_names' do
    $game = Game.new(Player.new(params[:Player_1]), Player.new(params[:Player_2]))
    redirect to '/player_1'
  end

  get '/player_1' do
    erb(:player_1)
  end

  post '/p1_choice' do
    $game.player_1.make_choice(params['p1_choice'])
    redirect to '/player_2'
  end

  get '/player_2' do
    erb(:player_2)
  end

  post '/p2_choice' do
    $game.player_2.make_choice(params['p2_choice'])
    redirect to '/results'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    erb(:play)
  end

  post '/choices' do
    @game = $game
    @game.player_1.make_choice(params['choice'])
    redirect to '/results'
  end

  get '/results' do
    @game = $game
    @game.rps_logic(@game.player_1.choice, @game.player_2.choice)
    @game.result
    erb(:results)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
