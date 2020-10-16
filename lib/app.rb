require 'sinatra'
require 'sinatra/base'
require_relative 'Game'

class Selection < Sinatra::Base
  enable :sessions
  attr_reader :game

  get '/playervscomp' do
    erb(:index_vs_comp)
  end

  post '/playervscompresult' do
    session[:Playerselection] = params[:Playerselection]
      session[:Player_name] = params[:Player_name]
      redirect '/vscompresult'
  end

  get '/vscompresult' do
    @Player_name = session[:Player_name]
    @Playerselection = session[:Playerselection]
    erb(:names_and_player_select)
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1_name] = params[:Player1_name]
    session[:Player2_name] = params[:Player2_name]
    redirect '/first_turn'
  end

  get '/first_turn' do
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    erb(:names_and_player1_select)
  end

  post '/player2select' do
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    session[:Player1_selection] = params[:Player1selection]
    redirect '/second_turn'
  end

  get '/second_turn' do
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    erb(:Player2_select)
  end

  post '/result' do
    session[:Player2_selection] = params[:Player2selection]
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    @Player1_selection = session[:Player1_selection]
    @Player2_selection = session[:Player2_selection]
    @game = Game.new(@Player1_selection, @Player2_selection)
    @game.result
    erb(:result)
  end

end
