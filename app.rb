require 'sinatra/base'
require './lib/comp_player2'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['player1'] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session['player1']
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:opponents_move] = CompPlayer2.new.move
    redirect '/results'
  end

  get '/results' do
    @move = session[:move]
    @opponents_move = session[:opponents_move]
    erb :results
  end


  run! if app_file == $0
end
