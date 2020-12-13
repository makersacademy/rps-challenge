require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @game = $game
    erb :play
  end

  get '/rock' do
    @player_name = session[:player_name]
    @game = $game
    @game.random_choice
    @game.win_condition_for_rock
    erb :rock
  end

  run! if app_file == $0
end
