require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/singleplayer-game' do
    session[:player] = Player.new(params[:name])
    redirect '/singleplayer-game'
  end

  get '/singleplayer-game' do
    erb :singleplayer_game
  end

  post '/results' do
    session[:move] = params[:move]
    redirect '/results'
  end

  get '/results' do
    erb :results
  end
end
