require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class Rps_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:game] = Game.new
    session[:player] = Player.new (params[:name])
    session[:comp] = Computer.new
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:player].name
    erb :new_game
  end

  post '/result' do
    session[:player].choice = params[:rps]
    session[:comp].choice = session[:comp].make_choice(session[:game].options)
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player].choice
    @computer_choice = session[:comp].choice
    @winner = session[:game].winner(session[:player], session[:comp])
    erb :result
  end

  get '/exit' do
    'Bye-bye'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
