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

    # # game.player_1_choice = 'rock'
    # # game.player_2_choice = 'rock'
    # # @result = @game.outcome
    # p @game.player_1_choice
    erb :play
  end

  post '/result' do
    @game = Game.new
    @player_1_move = params[:choice]
    
    erb :result
  end

end
