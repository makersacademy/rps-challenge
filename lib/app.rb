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
    @player1 = session[:player1]
    erb(:play)
  end

  post '/rock' do
    session[:game] = Game.new
    @game = session[:game]
    @result = session[:game].winner('rock')
    redirect '/result'
  end

  post '/scissors' do
    @result = session[:game].winner('scissors')
    redirect '/result'
  end

  post '/paper' do
    @result = session[:game].winner('paper')
    redirect '/result'
  end

  get '/result' do
    erb(:result)    
  end
end