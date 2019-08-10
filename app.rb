require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
     session[:name] = params[:name]
     redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/outcome' do
    @game = Game.new
    @user_input = params[:user_input]
    erb :outcome
  end


end
