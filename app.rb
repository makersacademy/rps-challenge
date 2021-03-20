require 'sinatra/base'
require './lib/game.rb'

class GameRPS < Sinatra::Base
  enable :sessions
  set :session_secret, "here be dragons"

  before do
    @game = session[:game]
  end

  get '/' do
    session[:game] = Game.new
    erb :index
  end

  post '/startgame' do
    @game.setup(params[:player_1_name])
    redirect '/gameview'
  end

  get '/gameview' do
    erb :round_start
  end

  post '/selection' do
    @game.player_1_move = params[:move]
    redirect '/round_end'
  end

  get '/round_end' do
    @game.play_round
    erb :round_end
  end
end
