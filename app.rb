require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  # def satus
  #   player = Player.new(session[:selection])
  #   computer = Computer.new(random_selection)
  #
  #   @player_name = session[:player_name]
  #   @player_selection = player.selection
  # end

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
    @player_name = session[:player_name]
    session[:selection] = :Rock
    player = Player.new(session[:selection])
    @player_selection = player.selection

    erb :game
  end

  post '/paper' do
    @player_name = session[:player_name]
    session[:selection] = :Paper
    player = Player.new(session[:selection])
    @player_selection = player.selection
    erb :game
  end

  post '/scissor' do
    @player_name = session[:player_name]
    session[:selection] = :Scissor
    player = Player.new(session[:selection])
    @player_selection = player.selection
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
