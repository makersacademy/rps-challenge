require 'sinatra/base'
require './lib/move.rb'
require './lib/result.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
     erb :home
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/final'
  end

  get '/player1' do
    @player_1_name = session[:player_1_name]
    erb :play_1
  end

  get '/player2' do
    @player_2_name = session[:player_2_name]
    erb :play_2
  end

  post '/decision1' do
    session[:choice1] = params[:choice1].downcase
    redirect '/final'
  end

  post '/decision2' do
    session[:choice2] = params[:choice2].downcase
    redirect '/final'
  end

  get '/final' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @guess1 = session[:choice1]
    @guess2 = session[:choice2]
    move
    result
  end

  run! if app_file == $0
end
