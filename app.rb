require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  # enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @player_choice = @game.player_move(params[:choice])
    @computer_choice = @game.computer_choice
    erb :result
  end

  # run! if app_file == $0
end
