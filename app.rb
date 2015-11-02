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
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/rock' do
    session[:player_choice] = :rock
    erb :game
  end

  post '/paper' do
    session[:player_choice] = :paper
    erb :game
  end

  post '/scissor' do
    session[:player_choice] = :scissor
    erb :game
  end

  get '/game' do
    player = Player.new(session[:player_choice])
    computer = Compouter.new
    @player_choice = player.choice
    @computer_choice = computer.choice

  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
