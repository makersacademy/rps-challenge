require 'sinatra/base'
require_relative './lib/model.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player_1] = Player.new(params[:player_1])
    session[:player_2] = Player.new(params[:player_2])
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    erb(:play)
  end

  post '/result' do
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    session[:player_1].choice = params[:Move]
    @player_1_choice = session[:player_1].choice
    session[:player_2].choice = ['rock', 'paper', 'scissors'].sample
    @player_2_choice = session[:player_2].choice
    match = Match.new(session[:player_1], session[:player_2])
    @winner = match.winner
    erb(:result)
  end

  get '/again' do
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    erb(:play)
  end

end
