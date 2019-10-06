require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    player2 = Computer.new
    Game.create(player1, player2)
    redirect '/play'
  end

  get '/multi' do
    'coming soon'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/selection' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game.play_round(session[:choice])
    # @game.keep_score
    erb :result
  end

  # add /names directory for multiplayer
end
