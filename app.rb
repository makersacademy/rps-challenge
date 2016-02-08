require './lib/match'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    session[:player_name] = params[:player_name]
    redirect '/match'
  end

  get '/match' do
    @name = session[:player_name]
    erb(:match)
  end

  post '/set_selection' do
    session[:player_selection] = params[:player_selection]
    redirect '/see_selected'
  end

  get '/see_selected' do
    @selected_by_player = session[:player_selection]
    array = ["Rock", "Paper", "Scissors"].sample
    @selected_by_ai = array
    if @selected_by_player == @selected_by_ai
      @winner = 'Nobody'
    elsif @selected_by_player == 'Rock' && @selected_by_ai == 'Paper'
      @winner = 'AI'
    elsif @selected_by_player == 'Rock' && @selected_by_ai == 'Scissors'
      @winner = 'You'
    elsif @selected_by_player == 'Paper' && @selected_by_ai == 'Rock'
      @winner = 'You'
    elsif @selected_by_player == 'Paper' && @selected_by_ai == 'Scissors'
      @winner = 'AI'
    elsif @selected_by_player == 'Scissors' && @selected_by_ai == 'Rock'
      @winner = 'AI'
    elsif @selected_by_player == 'Scissors' && @selected_by_ai == 'Paper'
      @winner = 'You'
    end
    erb(:selected)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end