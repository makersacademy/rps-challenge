require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    redirect to('/play')
  end

  post '/play' do
    session[:player] = Player.new(params[:player])
    @player = session[:player].name
    erb(:play)
  end

  post '/result' do
    session[:player] = Player.new(params[:player])
    @player = session[:player].name
    session[:play] = Game.new(params[:Rock] || params[:Paper] || params[:Scissors])
    session[:play].win_calculator
    @play_result = session[:play].result
    @opponent_pick = session[:play].opponent_choice
    erb(:play)
  end

  run! if app_file == $0
end
