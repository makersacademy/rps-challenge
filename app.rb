require 'sinatra/base'
require './lib/game'
class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    $game = Game.new(Player.new(params[:player]),Computer.new)
    redirect '/welcome'
  end

  get '/welcome' do
    @player = $game.player
    erb(:welcome)
  end

  post '/choice' do
    $game.player_choose(params[:weapon])
    $game.computer_choose
    redirect '/decision'
  end

  get '/decision' do
    @player = $game.player
    @computer = $game.computer
    @result = $game.result
    erb :decision
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
