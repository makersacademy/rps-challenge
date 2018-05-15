require 'sinatra/base'
require_relative './lib/game_result.rb'

class Game < Sinatra::Base

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

  get '/options' do
    erb :options
  end

  post '/p1move' do
    session[:option] = params[:option]
    redirect '/result'
  end

  get "/result" do
    @compu_move = ["rock", "paper", "scissors"].sample
    @player_move = session[:option]
    game_result = GameResult.new(@player_move, @compu_move, session[:player_name])
    @final = game_result.calculate_result
    erb :final
  end

  run! if app_file == $0
end
