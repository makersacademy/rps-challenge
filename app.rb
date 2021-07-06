require 'sinatra/base'
require './lib/game'
require './lib/player'

class Roshambo < Sinatra::Base

  enable :sessions
  ARSENAL = ["rock", "paper", "scissors"]

  get '/' do
    erb(:index)
  end

  post '/challenger_approaches' do
    me = params["player_name"]
    you = "Computer"
    @game = Game.start_game(one: me, two: you)
    redirect '/warlords_rising'
  end

  get '/warlords_rising' do
    @ronin = Game.current_game.player_one.name
    erb(:challenger)
  end

  post '/RO-SHAM-BO' do
    Game.current_game.player_two.pick(ARSENAL.sample)
    Game.current_game.player_one.pick(params[:choice])
    redirect '/results'
  end

  get '/results' do
    @result = Game.current_game.janken
    erb(:results)
  end
end
