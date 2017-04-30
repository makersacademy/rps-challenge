require 'sinatra/base'
require_relative './model/computer'
require_relative './model/result'
require_relative './model/display_result'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    @player = session[:player]
    erb :game
  end

  get '/game' do
    @player = session[:player]
    erb :play
  end

  post '/play' do
    @player = session[:player]
    @players_option = params[:players_option]
    computer = Computer.new
    @computers_option = computer.randomiser
    @result = Result.new(@players_option, @computers_option)
    @winner = @result.winner
    @display_result = DisplayResult.new(@winner, @player)
    erb :computers_option
  end

  run! if app_file == $0

end
