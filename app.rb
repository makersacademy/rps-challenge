require 'sinatra/base'
require './lib/rock_paper_scissors.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:name1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  post '/player_choice' do
    @game = Game.new
    @player_1_move = params[:choice]
    erb :player_choice
  end

end
