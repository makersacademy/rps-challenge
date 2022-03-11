require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/username' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/game_start'
  end

  get '/game_start' do
    @game = $game
    erb :game_start
  end

  get '/game' do
    @game = $game
    erb :game
  end

  get '/rock' do
    @game = $game
    @game.rock
    redirect '/game'
  end

  get '/paper' do
    @game = $game
    @game.paper
    redirect '/game'
  end

  get '/scissors' do
    @game = $game
    @game.scissors
    redirect '/game'
  end

  run! if app_file == $0
end
