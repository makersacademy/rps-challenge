require 'sinatra/base'
require './lib/game'
require './lib/opponent'
require './lib/player'
require 'csv'

class RockPaperScissors < Sinatra::Base

  enable :sessions

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
    # session.delete[:info]
    erb :play
  end

  post '/arena' do
    @game.play_a_round(params[:choice])
    session[:game_info] = [@game.players[0].name, @game.game_history]
    erb :arena
  end

  post '/save_game' do
    @game.save_game(session)
    erb :save_game
  end

  run! if app_file == $0
end
