require 'sinatra/base'
require 'shotgun'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'Rock is my favourite move'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    $player1 = session[:player1]
    erb(:play)
  end

  post '/rock' do
    $result = Game.new.winner('rock')
    redirect '/result'
  end

  post '/scissors' do
    $result = Game.new.winner('scissors')
    redirect '/result'
  end

  post '/paper' do
    $result = Game.new.winner('paper')
    redirect '/result'
  end

  get '/result' do
    erb(:result)    
  end
end