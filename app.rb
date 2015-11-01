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
    session[:weapon] = $game.player_choose(params[:weapon])
    redirect '/decision'
  end

  get '/decision' do
    @player = $game.player
    erb :decision
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
