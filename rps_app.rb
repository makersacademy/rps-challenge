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
    session[:turn] = session[:player_name]
    erb :play
  end

  get '/options' do
    @turn = session[:turn]
    erb :options
  end

  post '/p1move' do
    session[:option] = params[:option]
    session[:turn] = "computer's turn"
    redirect '/options'
  end

  get "/result" do
    session[:sample] = ["rock", "paper", "scissors"].sample
    game_result = GameResult.new(session[:option], session[:sample], session[:player_name])
    @final = game_result.calculate_result
    erb :final
  end

  run! if app_file == $0
end
