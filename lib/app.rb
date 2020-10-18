require 'sinatra/base'
require 'shotgun'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'Rock is my favourite move'
  
  def initialize
    @game = Game.new
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    puts params
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  post '/rock' do
    @game.winner('rock')
    redirect '/result'
  end

  post '/scissors' do
    @game.winner('scissors')
    redirect '/result'
  end

  post '/paper' do
    @game.winner('paper')
    redirect '/result'
  end

  get '/result' do
    "you won"
    # Game.new.winner(@move)
    # erb(:result)
  end
end