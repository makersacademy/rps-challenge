require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  post '/result' do
    game = Game.new
    comp = Computer.new
    session[:game] = game
    session[:player_choice] = params[:rps]
    session[:computer_choice] = comp.choice(game.options)
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @winner = session[:game].winner(@player_choice, @computer_choice)
    erb :result
  end

  get '/exit' do
    'Bye-bye'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
