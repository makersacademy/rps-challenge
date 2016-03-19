require 'sinatra/base'
require 'sinatra'
require './lib/game'


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/login' do
    session[:me] = params[:player_name]
    Game.create(player1_name:session[:me])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @me = @game.player1
    @opponent = @game.player2
    erb(:play)
  end

  post '/turn' do
    @game = Game.instance
    @game.player1.play(params[:play].to_sym)
    @game.player2.play
    @game.winner
    @game.in_progress!
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
