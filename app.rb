require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/new-game' do
    @player_1_name = params[:name]
    @player_2_name = 'Computer'
    erb :new_game
    redirect '/play'
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    erb :play
  end

  post '/action' do
    @player_1_choice = params[:choice]
    erb :action
    redirect '/result'
  end

  get '/result' do
    @player_1_name = @game.player_1.name
    @player_1_choice = @game.player_1.choice
    @player_2_name = @game.player_2.name
    @player_2_choice = @game.player_2.choice
    @result = @game.result
    erb :result
  end

end
