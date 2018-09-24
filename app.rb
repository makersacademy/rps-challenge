require 'sinatra/base'
require_relative './lib/winner'
require_relative './lib/player'

class RPS <Sinatra::Base

  get '/' do
    @name = params[:player]
    erb :index
  end

  post '/begin_game' do
    @user_chooses = params[:user_chooses]
    erb :begin_game
  end

  post '/play' do
    @user_chooses = params[:user_chooses]
    @computer_chooses = Player.new.random_turn
    winning_player = Winner.new(@user_chooses, @computer_chooses)
    @won = winning_player.who_wins
    erb :play
  end

  run! if app_file == $0
end
