require 'sinatra/base'
require './lib/opponent'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/play' do
    session[:hand] = params[:hand]
    @opponent = Opponent.new
    session[:opponent_hand] = @opponent.hand
    erb :result
  end

  run! if app_file == $0
end
