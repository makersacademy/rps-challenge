require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    challenger_name = params[:name]
    $game = Game.new(challenger_name)
    redirect '/preparation'
  end

  get '/preparation' do
    @game = $game
    erb :preparation
  end

  get '/battle' do
    @game = $game
    erb :battle
  end

  get '/move1' do
    @game = $game
    @game.challenger_roll
    erb :move1
  end

  get '/midway' do
    @game = $game
    erb :midway
  end

  get '/move2' do
    @game = $game
    @game.machine_roll
    @game.winner?
    erb :move2
  end

  get '/challengerwin' do
    @game = $game
    erb :challengerwin
  end

  get '/machinewin' do
    @game = $game
    erb :machinewin
  end

  get '/draw' do
    @game = $game
    erb :draw
  end

  run! if app_file == $0

end
