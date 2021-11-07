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
    $request_name = false
    redirect to('/sign_in')
  end

  get '/sign_in' do
    erb(:index)
  end

  post '/begin' do
    if params[:player_1_name] == ""
      $request_name = true
      redirect to('/sign_in')
    else
      create_game
      redirect to('/game')
    end
  end

  get '/warning' do
    erb(:index_warning)
  end

  get '/game' do
    erb(:game)
  end

  post '/choice' do
    make_choice(params[:choice].to_s.to_i) 
  end

  get '/result' do
    erb(:result)
  end

  get '/reset' do
    $game.reset
    redirect to('/game')
  end

  def make_choice(n)
    $game.make_choice(n)
    $game.make_choice if $game.single_game?
    redirect to($game.ready_to_declare? ? '/result' : '/game')
  end

  def create_game
    player_one = Player.new(params[:player_1_name])
    player_two = Player.new(params[:player_2_name])
    $game = Game.new(player_one, player_two)
  end

  run! if app_file == $0
end
