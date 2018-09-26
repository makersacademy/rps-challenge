require 'sinatra/base'
require_relative './lib/winner'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/begin_game' do
    session[:player] = params[:player]
    redirect '/begin_game'
  end

  get '/begin_game' do
    erb :begin_game
  end

  post '/play' do
    @player = session[:player]
    session[:user_chooses] = params[:user_chooses]
    session[:computer_chooses] = Player2.new.random_turn
    winning_player = Winner.new(@player, @user_chooses, @computer_chooses)
    @won = winning_player.who_wins
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @user_chooses = session[:user_chooses]
    @computer_chooses = session[:computer_chooses]
    winning_player = Winner.new(@player, @user_chooses, @computer_chooses)
    @won = winning_player.who_wins
    erb :play
  end

  run! if app_file == $0
end
