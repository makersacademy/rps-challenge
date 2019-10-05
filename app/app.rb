require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end


  get '/' do
    erb :index
  end

  get '/single' do
    erb :single
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/multi' do
    'coming soon'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/selection' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @choice = session[:choice]
    erb :result
  end

  # add /names directory for multiplayer
end
