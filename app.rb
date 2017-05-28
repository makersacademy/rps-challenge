require 'sinatra/base'

class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/results' do
    session[:player_selection] = params[:player_selection]
    redirect '/results'
  end

  get '/results' do
    @player_1_name = session[:player_1_name]
    @player_selection = session[:player_selection]
    possible_computer_selection = ["Rock", "Paper", "Scissors"]
    @computer_selection = possible_computer_selection[rand(3)]
    @result_hash = { ["Rock", "Scissors"] => :win, ["Paper", "Rock"] => :win, ["Scissors", "Paper"] => :win, ["Rock", "Paper"] => :lose, ["Paper", "Scissors"] => :lose, ["Scissors", "Rock"] => :lose, ["Rock", "Rock"] => :tie, ["Paper", "Paper"] => :tie, ["Scissors", "Scissors"] => :tie }
    erb :results
  end

  run! if app_file == $0
end
