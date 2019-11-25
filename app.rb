require 'sinatra'
require './lib/players'
class RoPaSc < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/registration' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  get '/options' do

  end
end
