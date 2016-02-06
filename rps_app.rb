require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player_one]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/move' do
    $game.player_one.move = params[:move]
    redirect '/game'
  end

  get '/game' do
    @game = $game
    p @game.player_one.move
    p @game.player_two.move
    p @game.result
    erb @game.result
  end

  run! if app_file == $0

end
