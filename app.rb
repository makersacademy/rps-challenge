require 'sinatra/base'
require './lib/game'
require './lib/player'

class Roshambo < Sinatra::Base

  enable :sessions
  set :session_secret, "i76t2oivmyoi3nti37n"

  get '/' do
    erb(:index)
  end

  post '/challenger_approaches' do
    @game = Game.start_game(one: Player.new(params["player_name"]), two: Player.new("Computer"))
    @game.player_two.pick(["rock", "paper", "scissors"].sample)
    redirect '/warlords_rising'
  end

  get '/warlords_rising' do
    @ronin = Game.current_game.player_one.name
    erb(:challenger)
  end

  post '/RO-SHAM-BO' do
    Game.current_game.player_two.pick(["rock", "paper", "scissors"].sample)
    Game.current_game.player_one.pick(params[:choice])
    redirect '/results'
  end

  get '/results' do
    @result = Game.current_game.janken
    erb(:results)
  end
end
