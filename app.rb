require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/result' do
    @game = $game
    @player_choice = params[:commit]
    @result = @game.play(@player_choice)
    erb :result
  end

  run! if app_file == $0
end
