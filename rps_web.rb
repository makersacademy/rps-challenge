require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RpsChallenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:game] = Game.new
    session[:game].add_player(Player.new (params[:name]))
    session[:game].add_player(Computer.new)
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:game].player1.name
    erb :new_game
  end

  post '/result' do
    session[:game].player1.choice = params[:rps]
    session[:game].player2.choice = session[:game].player2.make_choice(session[:game].options)
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:game].player1.choice
    @computer_choice = session[:game].player2.choice
    @winner = session[:game].winner
    @score = session[:game].score
    erb :result
  end

  get '/exit' do
    'Bye-bye'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
