require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  register Sinatra::Reloader

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player-names' do
    @game.new_player(params[:player1_name])
    @game.new_player(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player-choice' do
    @game.players[@game.turn_manager.turn].assign_choice(params[:radio_button])
    if @game.turn_manager.turn == 1
      @game.turn_manager.reset 
      redirect '/result'
    else
      @game.change_player
      redirect '/play'
    end
  end

  get '/result' do
    @game.determine_winner
    p @game.result_message
    erb :result
  end

  run! if app_file == $0
end
