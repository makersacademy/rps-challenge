require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    # player = Player.new(session[:choice])
    # computer = Computer.new()
    # $game = Game.new(player_choice, computer_choice)
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/rock' do
    @player_name = session[:player_name]
    session[:player_choice] = :rock
    player = Player.new(session[:player_choice])
    @player_choice = player.choice
    erb :game
  end

  post '/paper' do
    @player_name = session[:player_name]
    session[:player_choice] = :paper
    player = Player.new(session[:player_choice])
    @player_choice = player.choice
    erb :game
  end

  post '/scissor' do
    @player_name = session[:player_name]
    session[:player_choice] = :scissor
    player = Player.new(session[:player_choice])
    @player_choice = player.choice
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
