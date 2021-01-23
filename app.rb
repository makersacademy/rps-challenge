require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/player'
# require './lib/game'

class RockPaperScissors < Sinatra::Base

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
    erb :play
  end

end
