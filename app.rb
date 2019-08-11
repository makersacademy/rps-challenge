require 'sinatra/base'
require_relative './lib/randommove'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/enter_name' do
    erb :enter_name
  #   session[:player_name] = params[:player_name]
  # redirect '/play'
  end

  post '/play' do
    session[:player_name] ||= params[:player_name]

    redirect '/choose_move'
  end

  get '/choose_move' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    session[:move] = params[:move]
    redirect '/results'
  end

  get '/results' do
    @user_move = session[:move]
    randommove = Randommove.new
    @comp_move = randommove.randommove
    erb :result
  end

  post '/enter_names' do
    erb :enter_names
  end

  post '/play_two_player' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]

    redirect '/play_player_1'
  end

  get '/play_player_1' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]

    erb :play_player_1
  end

  post '/play_player_2' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    session[:player_one_move] = params[:player_one_move]
    erb :play_player_2
  end

  post '/results_two_player' do
    session[:player_two_move] = params[:player_two_move]
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @player_one_move = session[:player_one_move]
    @player_two_move = session[:player_two_move]

    erb :results_two_player
  end

  run! if app_file == $0
end
