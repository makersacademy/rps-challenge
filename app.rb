require 'sinatra/base'
require './lib/Player.rb'
require './lib/game.rb'

AI_MOVE = ["rock", "paper", "scissors"]
AI_NAME = "Bot"
class Rps < Sinatra::Base
attr_reader :player2_choice
enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1])
    session[:bot] = Player.new(AI_NAME)
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
    session[:player1].choice(params[:choice1])
    session[:bot].choice(AI_MOVE.sample)
    redirect '/results'
  end

  get '/results'do
    @player1 =session[:player1].name
    @bot = session[:bot].name
    @player1_choice = session[:player1].move
    @player2_choice = session[:bot].move
    @result = results(@player1_choice, @player2_choice)
    erb(:result)
  end
  run! if app_file == $0

end
