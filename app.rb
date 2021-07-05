require 'sinatra/base'
require './lib/opponent'
require './lib/result'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:name]
    erb :game
  end

  post '/choice' do
    session[:player_choice] = params[:choice]
    session[:opponent_choice] = Opponent.new.move
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:name]
    @player_choice = session[:player_choice]
    @opponent_choice = session[:opponent_choice]
    @result = Result.new(@player_choice, @opponent_choice)  
    erb :result
  end

  run! if app_file == $0
end
