require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    player1 = Player.new(params[:name])
    player2 = Player.new
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/outcome' do
    @game = session[:game]
    @game.player1.make_move(params[:player_move])
    @game.player2.make_move
    redirect '/outcome'
  end

  get '/outcome' do
    @game = session[:game]
    erb(:outcome)
  end

end
