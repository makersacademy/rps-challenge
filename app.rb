require './lib/player'
require './lib/game'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
# http://localhost:4567
# rackup -p 4567

class RpsGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/warning' do
    erb(:index_warning)
  end

  post '/begin' do
    if params[:player_1_name] == ""
      redirect to('/warning')
    else
      create_game
      redirect to('/game')
    end
  end

  def create_game
    player_one = Player.new(params[:player_1_name])
    player_two = Player.new(params[:player_2_name])
    $game = Game.new(player_one, player_two)
  end

  get '/game' do
    erb(:game)
  end

  get '/rock' do
    make_choice(0)
  end

  get '/paper' do
    make_choice(1)
  end

  get '/scissors' do
    make_choice(2)
  end

  def make_choice(n)
    $game.make_choice(n)
    if $game.single_game?
      $game.make_choice
    end

    if $game.ready_to_declare?
      "Ready to declare"
    else
      redirect to('/game')
    end
  end

  run! if app_file == $0
end
