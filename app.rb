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

end
