require 'sinatra/base'
require './lib/computer_move.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:playername] = params[:playername]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:playername]
    erb :play
  end

  post '/move' do
    session[:selection] = params[:selection]
    redirect '/make_move'
  end

  get '/make_move' do
    @player_name = session[:playername]
    @player_move = session[:selection]
    session[:computer_move] = ComputerMove.new
    @computer_move = session[:computer_move]
    erb :make_move
  end

end
