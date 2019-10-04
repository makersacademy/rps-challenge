require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end


  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  post '/name' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/multi' do
    'coming soon'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  # add /names directory for multiplayer


end
