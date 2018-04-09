require 'sinatra'
require './lib/roshambo.rb'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:'player1']
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  post '/rock' do
    session[:P1RPS] = "Rock"
    session[:newroll] = newroll
    redirect('/result')
  end

  post '/paper' do
    session[:P1RPS] = "Paper"
    redirect('/result')
  end

  post '/scissors' do
    session[:P1RPS] = "Scissors"
    redirect('/result')
  end

  get '/result' do
    @player1 = session[:player1]
    @P1RPS = session[:P1RPS]
    @newroll = session[:newroll]
    erb(:result)
  end
end
