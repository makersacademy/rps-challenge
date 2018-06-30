require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/registered' do
    session[:player_1_name] = params[:player1_name]
    # erb :registered
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1_name]

    erb :play
  end

  # post '/play' do
  #   erb :play
  # end

  post '/result' do
    @game = Game.new
    @player_1_selection = params[:name]
    @game.compare(@player_1_selection)
    redirect @game.result
  end

  get '/win' do
    erb :win
  end

  get '/lost' do
    erb :lost
  end

  get '/draw' do
    erb :draw
  end

  # checks the site is up
  get '/server' do
    erb :server
  end

  # post '/result' do
  #   @game = Game.new
  #   @computer_option = @game.rps.sample
  #   @player_1_option = params[:name]
  #
  #   puts "user: #{@player_1_option}"
  #   puts "comp: #{@computer_option}"
  #   erb :result
  # end

  run! if app_file == $0

end
