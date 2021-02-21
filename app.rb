require 'sinatra/base'
require './lib/Player.rb'
require './lib/game.rb'

AI_MOVE = ["rock", "paper", "scissors"]

class Rps < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1])
    session[:bot] = Player.new
    redirect '/move'
  end

  get '/move' do
    @player1 = session[:player1].name
    @bot = session[:bot].name
    erb(:move)
  end

  post '/choices' do
    @player1 = session[:player1].name
    @bot = session[:bot].name
    session[:choice1] = params[:choice1]
    redirect '/results'
  end

  get '/results'do
    @player1 =session[:player1].name
    @bot = session[:bot].name
    @player1_choice = session[:choice1]
    @player2_choice = AI_MOVE.sample
    @result = results(@player1_choice, @player2_choice)
    erb(:result)
  end
  run! if app_file == $0

end
