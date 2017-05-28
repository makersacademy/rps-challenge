require 'sinatra/base'
require './lib/game'
require './lib/opponent'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register' do
    @game = Game.create(Player.new(params[:player_name]), Opponent.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/arena' do
    @game.play_a_round(params[:choice])
    erb :arena
  end

  run! if app_file == $0
end
