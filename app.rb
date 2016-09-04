require 'sinatra/base'
# require 'shotgun'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.compare_rock
    redirect '/result'
  end

  post '/paper' do
    @game = $game
    @game.compare_paper
    redirect '/result'
  end

  post '/scissors' do
    @game = $game
    @game.compare_scissors
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @game.winner
    erb :result
  end


  run! if app_file == $0
end
