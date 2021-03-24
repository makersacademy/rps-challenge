require 'sinatra/base'
require './lib/game.rb'
require './lib/score.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
	  @game = Game.current_game
    end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1_name = params[:player1_name]
    erb :play
  end

  get '/play' do
    erb :play
  end

  post '/outcome' do
    @game = Game.new_game(@player1_name, params[:player_weapon])
    erb @game.outcome
  end
end
